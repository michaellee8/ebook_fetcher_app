import 'package:built_collection/built_collection.dart';

import '../../../../utils/app_http_client.dart';
import 'book_fetcher.dart';
import 'book_fetcher_types.dart';
import 'package:html/parser.dart' show parse;
import '../../../../utils/fast_gbk/fast_gbk.dart' show gbk;

/// Provides book fetching for www.xbiqugeshu.com.
class XbiqugeshuBookFetcher implements BookFetcher {
  XbiqugeshuBookFetcher(
    this.httpClient,
    this.url,
  );

  final AppHttpClient httpClient;
  final Uri url;

  static final _chapterTitleRegexp = RegExp(r'第(\d+)章');

  static final _lastUpdateRegexp =
      RegExp(r'^更新时间：(\d+)-(\d+)-(\d+) (\d+):(\d+)$');

  int _parseChapterNumFromChapterTitle(String chapterTitle) {
    return int.parse(_chapterTitleRegexp.firstMatch(chapterTitle)!.group(1)!);
  }

  @override
  Future<BookMetadata> fetchMetadata() async {
    final res = await httpClient.get(url);
    final document = parse(gbk.decode(res.bodyBytes));
    final bookTitleElement = document.getElementsByClassName('bookTitle')[0];
    final title = bookTitleElement.text;
    final lastChapterElement = bookTitleElement.parent!.children[2].children[0];
    final lastChapter =
        _parseChapterNumFromChapterTitle(lastChapterElement.text);
    final lastUpdateElement = bookTitleElement.parent!.children[3];
    final lastUpdateFields = _lastUpdateRegexp
        .firstMatch(lastUpdateElement.text)!
        .groups([1, 2, 3, 4, 5])
        .map((e) => int.parse(e!))
        .toList();

    // Need to compensate for GMT+8
    final lastUpdate = DateTime.utc(lastUpdateFields[0], lastUpdateFields[1],
            lastUpdateFields[2], lastUpdateFields[3], lastUpdateFields[4])
        .subtract(const Duration(hours: 8));

    return BookMetadata(
      title: title,
      lastUpdate: lastUpdate,
      lastChapter: lastChapter,
      url: url,
    );
  }

  @override
  Future<BuiltList<ChapterMetadata>> fetchTableOfContent() async {
    final res = await httpClient.get(url);
    final document = parse(gbk.decode(res.bodyBytes));
    final chapterElements = document.querySelectorAll(
        'div#list-chapterAll > dl.panel-chapterlist > dd > a');
    return BuiltList(chapterElements.asMap().entries.map((e) {
      int chapterNum;
      try {
        chapterNum =
            _parseChapterNumFromChapterTitle(e.value.attributes['title']!);
      } catch (ex) {
        return null;
      }
      return ChapterMetadata(
        title: e.value.attributes['title']!,
        chapterSeqNum: e.key + 1,
        chapterNum: chapterNum,
        url: Uri.parse(e.value.attributes['href']!).replace(
          host: url.host,
          scheme: url.scheme,
        ),
      );
    }).whereType<ChapterMetadata>());
  }

  @override
  Future<Chapter> fetchChapter(ChapterMetadata metadata) async {
    final res = await httpClient.get(metadata.url);
    final document = parse(gbk.decode(res.bodyBytes));
    final contentElement = document.getElementById('html-Content')!;
    return Chapter(metadata: metadata, htmlContent: contentElement.innerHtml);
  }
}

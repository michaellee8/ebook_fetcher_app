import '../../../../utils/app_http_client.dart';
import 'book_fetcher.dart';
import 'book_fetcher_types.dart';
import 'package:html/parser.dart' show parse;

/// Provides book fetchong for www.xbiqugeshu.com.
class XbiqugeshuBookFetcher implements BookFetcher {
  XbiqugeshuBookFetcher(
    this.httpClient, {
    required this.url,
  });

  final AppHttpClient httpClient;
  final Uri url;

  @override
  Future<BookMetadata> fetchMetadata() async {
    final res = await httpClient.get(url);
    final document = parse(res.body);
    final bookTitleElement = document.getElementsByClassName('bookTitle')[0];
    final title = bookTitleElement.text;
    final lastChapterElement = bookTitleElement.parent!.children[2].children[0];
    final lastChapter = int.parse(
        RegExp(r"^第(\d+)章$").firstMatch(lastChapterElement.text)!.group(1)!);
    final lastUpdateElement = bookTitleElement.parent!.children[3];
    final lastUpdateFields = RegExp(r'^更新时间：(\d+)-(\d+)-(\d+) (\d+):(\d+)$')
        .firstMatch(lastUpdateElement.text)!
        .groups([1, 2, 3, 4, 5]).map((e) => int.parse(e!));

    // Need to compensate for GMT+8
    final lastUpdate = DateTime.utc(lastUpdateFields[0], lastUpdateFields[1],
        lastUpdateFields[2], lastUpdateFields[3], lastUpdateFields[4])
      ..subtract(const Duration(hours: 8));

    return BookMetadata(
      title: title,
      lastUpdate: lastUpdate,
      lastChapter: lastChapter,
      url: url,
    );
  }

  @override
  Future<BuiltList<ChapterMetadata>> fetchTableOfContent() {
    // TODO: implement fetchTableOfContent
    throw UnimplementedError();
  }

  @override
  Future<Chapter> fetchChapter(Uri chapterUrl) {
    // TODO: implement fetchChapter
    throw UnimplementedError();
  }
}

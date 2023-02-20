

import 'book_fetcher.dart';
import 'book_fetcher_types.dart';
import 'package:http/http.dart' as http;

/// Provides book fetchong for www.xbiqugeshu.com.
class XbiqugeshuBookFetcher implements BookFetcher {
  XbiqugeshuBookFetcher({
    required Uri url,
  });

  @override
  Future<BookMetadata> fetchMetadata() {
    final res = await http.get(url);
    if (res.statusCode)
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

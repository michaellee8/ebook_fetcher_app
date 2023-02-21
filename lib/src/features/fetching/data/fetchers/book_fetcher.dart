import '../../../../utils/app_http_client.dart';
import 'book_fetcher_types.dart';
import 'package:built_collection/built_collection.dart';
import 'xbiqugeshu_book_fetcher.dart';

/// Defines interface for fetching a book.
abstract class BookFetcher {
  factory BookFetcher(AppHttpClient httpClient, Uri url) {
    switch (url.host) {
      case 'www.xbiqugeshu.com':
        {
          return XbiqugeshuBookFetcher(httpClient, url);
        }
    }
    throw UnimplementedError('no fetcher implemented for such url');
  }

  Future<BookMetadata> fetchMetadata();

  Future<BuiltList<ChapterMetadata>> fetchTableOfContent();

  Future<Chapter> fetchChapter(ChapterMetadata metadata);
}

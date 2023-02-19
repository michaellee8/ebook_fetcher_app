import 'book_fetcher_types.dart';
import 'package:built_collection/built_collection.dart';

abstract class BookFetcher {
  Future<BookMetadata> fetchMetadata();

  Future<BuiltList<ChapterMetadata>> fetchTableOfContent();

  Future<Chapter> fetchChapter(Uri chapterUrl);
}

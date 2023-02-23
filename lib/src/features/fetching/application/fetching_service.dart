import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/drift_db.dart';
import '../../../utils/app_http_client.dart';
import '../data/fetchers/book_fetcher.dart';
import '../data/fetchers/book_fetcher_types.dart';

part 'fetching_service.g.dart';

part 'fetching_service.freezed.dart';

class FetchingService {
  FetchingService(this.ref);

  final Ref ref;

  Future<FetchBookByIdResult> fetchBookById(int bookId) async {
    final db = ref.read(appDatabaseProvider);
    final oldDbBook = await (db.select(db.books)
          ..where((t) => t.id.equals(bookId)))
        .getSingle();
    final bookUrl = oldDbBook.url;
    final fetcher = ref.read(bookFetcherProvider(url: Uri.parse(bookUrl)));
    final latestBookMetadata = await fetcher.fetchMetadata();
    final newDbBook = oldDbBook.copyWith(
      title: latestBookMetadata.title,
      lastChapter: latestBookMetadata.lastChapter,
      lastUpdate: latestBookMetadata.lastUpdate,
    );
    if (newDbBook != oldDbBook) {
      await db.update(db.books).replace(newDbBook);
      return FetchBookByIdResult(metadata: latestBookMetadata, changed: true);
    }
    return FetchBookByIdResult(metadata: latestBookMetadata, changed: false);
  }
}

@freezed
class FetchBookByIdResult with _$FetchBookByIdResult {
  const factory FetchBookByIdResult({
    required BookMetadata metadata,
    required bool changed,
  }) = _FetchBookByIdResult;
}

@Riverpod(keepAlive: false)
FetchingService fetchingService(FetchingServiceRef ref) {
  return FetchingService(ref);
}

@riverpod
BookFetcher bookFetcher(BookFetcherRef ref, {required Uri url}) {
  return BookFetcher(ref.watch(appHttpClientProvider), url);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:built_collection/built_collection.dart';
import '../../../../utils/built_collection_json_converters.dart';

part 'book_fetcher_types.freezed.dart';

part 'book_fetcher_types.g.dart';

@freezed
class BookMetadata with _$BookMetadata {
  const factory BookMetadata({
    required String title,
    required DateTime lastUpdate,
    required int lastChapter,
    required Uri url,
  }) = _BookMetadata;

  factory BookMetadata.fromJson(Map<String, Object?> json) =>
      _$BookMetadataFromJson(json);
}

@freezed
class ChapterMetadata with _$ChapterMetadata {
  const factory ChapterMetadata({
    required String title,
    required int chapterNum,
    required Uri url,
  }) = _ChapterMetadata;

  factory ChapterMetadata.fromJson(Map<String, Object?> json) =>
      _$ChapterMetadataFromJson(json);
}

@freezed
class Chapter with _$Chapter {
  const factory Chapter({
    required ChapterMetadata metadata,
    @StringBuiltListJsonConverter() required BuiltList<String> paragraphs,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, Object?> json) =>
      _$ChapterFromJson(json);
}

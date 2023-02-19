import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'book_info.freezed.dart';

@freezed
class BookInfo with _$BookInfo {
  const factory BookInfo({
    required String title,
    required DateTime lastUpdate,
    required int lastChapter,
  }) = _BookInfo;
}

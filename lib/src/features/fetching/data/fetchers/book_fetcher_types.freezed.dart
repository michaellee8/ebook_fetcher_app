// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_fetcher_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookMetadata _$BookMetadataFromJson(Map<String, dynamic> json) {
  return _BookMetadata.fromJson(json);
}

/// @nodoc
mixin _$BookMetadata {
  String get title => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  int get lastChapter => throw _privateConstructorUsedError;
  Uri get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookMetadataCopyWith<BookMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookMetadataCopyWith<$Res> {
  factory $BookMetadataCopyWith(
          BookMetadata value, $Res Function(BookMetadata) then) =
      _$BookMetadataCopyWithImpl<$Res, BookMetadata>;
  @useResult
  $Res call({String title, DateTime lastUpdate, int lastChapter, Uri url});
}

/// @nodoc
class _$BookMetadataCopyWithImpl<$Res, $Val extends BookMetadata>
    implements $BookMetadataCopyWith<$Res> {
  _$BookMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? lastUpdate = null,
    Object? lastChapter = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastChapter: null == lastChapter
          ? _value.lastChapter
          : lastChapter // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookMetadataCopyWith<$Res>
    implements $BookMetadataCopyWith<$Res> {
  factory _$$_BookMetadataCopyWith(
          _$_BookMetadata value, $Res Function(_$_BookMetadata) then) =
      __$$_BookMetadataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, DateTime lastUpdate, int lastChapter, Uri url});
}

/// @nodoc
class __$$_BookMetadataCopyWithImpl<$Res>
    extends _$BookMetadataCopyWithImpl<$Res, _$_BookMetadata>
    implements _$$_BookMetadataCopyWith<$Res> {
  __$$_BookMetadataCopyWithImpl(
      _$_BookMetadata _value, $Res Function(_$_BookMetadata) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? lastUpdate = null,
    Object? lastChapter = null,
    Object? url = null,
  }) {
    return _then(_$_BookMetadata(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastChapter: null == lastChapter
          ? _value.lastChapter
          : lastChapter // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookMetadata with DiagnosticableTreeMixin implements _BookMetadata {
  const _$_BookMetadata(
      {required this.title,
      required this.lastUpdate,
      required this.lastChapter,
      required this.url});

  factory _$_BookMetadata.fromJson(Map<String, dynamic> json) =>
      _$$_BookMetadataFromJson(json);

  @override
  final String title;
  @override
  final DateTime lastUpdate;
  @override
  final int lastChapter;
  @override
  final Uri url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookMetadata(title: $title, lastUpdate: $lastUpdate, lastChapter: $lastChapter, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookMetadata'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('lastUpdate', lastUpdate))
      ..add(DiagnosticsProperty('lastChapter', lastChapter))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookMetadata &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.lastChapter, lastChapter) ||
                other.lastChapter == lastChapter) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, lastUpdate, lastChapter, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookMetadataCopyWith<_$_BookMetadata> get copyWith =>
      __$$_BookMetadataCopyWithImpl<_$_BookMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookMetadataToJson(
      this,
    );
  }
}

abstract class _BookMetadata implements BookMetadata {
  const factory _BookMetadata(
      {required final String title,
      required final DateTime lastUpdate,
      required final int lastChapter,
      required final Uri url}) = _$_BookMetadata;

  factory _BookMetadata.fromJson(Map<String, dynamic> json) =
      _$_BookMetadata.fromJson;

  @override
  String get title;
  @override
  DateTime get lastUpdate;
  @override
  int get lastChapter;
  @override
  Uri get url;
  @override
  @JsonKey(ignore: true)
  _$$_BookMetadataCopyWith<_$_BookMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

ChapterMetadata _$ChapterMetadataFromJson(Map<String, dynamic> json) {
  return _ChapterMetadata.fromJson(json);
}

/// @nodoc
mixin _$ChapterMetadata {
  String get title => throw _privateConstructorUsedError;
  int get chapterSeqNum => throw _privateConstructorUsedError;
  int get chapterNum => throw _privateConstructorUsedError;
  Uri get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChapterMetadataCopyWith<ChapterMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterMetadataCopyWith<$Res> {
  factory $ChapterMetadataCopyWith(
          ChapterMetadata value, $Res Function(ChapterMetadata) then) =
      _$ChapterMetadataCopyWithImpl<$Res, ChapterMetadata>;
  @useResult
  $Res call({String title, int chapterSeqNum, int chapterNum, Uri url});
}

/// @nodoc
class _$ChapterMetadataCopyWithImpl<$Res, $Val extends ChapterMetadata>
    implements $ChapterMetadataCopyWith<$Res> {
  _$ChapterMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? chapterSeqNum = null,
    Object? chapterNum = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      chapterSeqNum: null == chapterSeqNum
          ? _value.chapterSeqNum
          : chapterSeqNum // ignore: cast_nullable_to_non_nullable
              as int,
      chapterNum: null == chapterNum
          ? _value.chapterNum
          : chapterNum // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChapterMetadataCopyWith<$Res>
    implements $ChapterMetadataCopyWith<$Res> {
  factory _$$_ChapterMetadataCopyWith(
          _$_ChapterMetadata value, $Res Function(_$_ChapterMetadata) then) =
      __$$_ChapterMetadataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int chapterSeqNum, int chapterNum, Uri url});
}

/// @nodoc
class __$$_ChapterMetadataCopyWithImpl<$Res>
    extends _$ChapterMetadataCopyWithImpl<$Res, _$_ChapterMetadata>
    implements _$$_ChapterMetadataCopyWith<$Res> {
  __$$_ChapterMetadataCopyWithImpl(
      _$_ChapterMetadata _value, $Res Function(_$_ChapterMetadata) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? chapterSeqNum = null,
    Object? chapterNum = null,
    Object? url = null,
  }) {
    return _then(_$_ChapterMetadata(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      chapterSeqNum: null == chapterSeqNum
          ? _value.chapterSeqNum
          : chapterSeqNum // ignore: cast_nullable_to_non_nullable
              as int,
      chapterNum: null == chapterNum
          ? _value.chapterNum
          : chapterNum // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChapterMetadata
    with DiagnosticableTreeMixin
    implements _ChapterMetadata {
  const _$_ChapterMetadata(
      {required this.title,
      required this.chapterSeqNum,
      required this.chapterNum,
      required this.url});

  factory _$_ChapterMetadata.fromJson(Map<String, dynamic> json) =>
      _$$_ChapterMetadataFromJson(json);

  @override
  final String title;
  @override
  final int chapterSeqNum;
  @override
  final int chapterNum;
  @override
  final Uri url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterMetadata(title: $title, chapterSeqNum: $chapterSeqNum, chapterNum: $chapterNum, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChapterMetadata'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('chapterSeqNum', chapterSeqNum))
      ..add(DiagnosticsProperty('chapterNum', chapterNum))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChapterMetadata &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.chapterSeqNum, chapterSeqNum) ||
                other.chapterSeqNum == chapterSeqNum) &&
            (identical(other.chapterNum, chapterNum) ||
                other.chapterNum == chapterNum) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, chapterSeqNum, chapterNum, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChapterMetadataCopyWith<_$_ChapterMetadata> get copyWith =>
      __$$_ChapterMetadataCopyWithImpl<_$_ChapterMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChapterMetadataToJson(
      this,
    );
  }
}

abstract class _ChapterMetadata implements ChapterMetadata {
  const factory _ChapterMetadata(
      {required final String title,
      required final int chapterSeqNum,
      required final int chapterNum,
      required final Uri url}) = _$_ChapterMetadata;

  factory _ChapterMetadata.fromJson(Map<String, dynamic> json) =
      _$_ChapterMetadata.fromJson;

  @override
  String get title;
  @override
  int get chapterSeqNum;
  @override
  int get chapterNum;
  @override
  Uri get url;
  @override
  @JsonKey(ignore: true)
  _$$_ChapterMetadataCopyWith<_$_ChapterMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

Chapter _$ChapterFromJson(Map<String, dynamic> json) {
  return _Chapter.fromJson(json);
}

/// @nodoc
mixin _$Chapter {
  ChapterMetadata get metadata => throw _privateConstructorUsedError;
  String get htmlContent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChapterCopyWith<Chapter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterCopyWith<$Res> {
  factory $ChapterCopyWith(Chapter value, $Res Function(Chapter) then) =
      _$ChapterCopyWithImpl<$Res, Chapter>;
  @useResult
  $Res call({ChapterMetadata metadata, String htmlContent});

  $ChapterMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$ChapterCopyWithImpl<$Res, $Val extends Chapter>
    implements $ChapterCopyWith<$Res> {
  _$ChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
    Object? htmlContent = null,
  }) {
    return _then(_value.copyWith(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as ChapterMetadata,
      htmlContent: null == htmlContent
          ? _value.htmlContent
          : htmlContent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChapterMetadataCopyWith<$Res> get metadata {
    return $ChapterMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChapterCopyWith<$Res> implements $ChapterCopyWith<$Res> {
  factory _$$_ChapterCopyWith(
          _$_Chapter value, $Res Function(_$_Chapter) then) =
      __$$_ChapterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChapterMetadata metadata, String htmlContent});

  @override
  $ChapterMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$_ChapterCopyWithImpl<$Res>
    extends _$ChapterCopyWithImpl<$Res, _$_Chapter>
    implements _$$_ChapterCopyWith<$Res> {
  __$$_ChapterCopyWithImpl(_$_Chapter _value, $Res Function(_$_Chapter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
    Object? htmlContent = null,
  }) {
    return _then(_$_Chapter(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as ChapterMetadata,
      htmlContent: null == htmlContent
          ? _value.htmlContent
          : htmlContent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Chapter with DiagnosticableTreeMixin implements _Chapter {
  const _$_Chapter({required this.metadata, required this.htmlContent});

  factory _$_Chapter.fromJson(Map<String, dynamic> json) =>
      _$$_ChapterFromJson(json);

  @override
  final ChapterMetadata metadata;
  @override
  final String htmlContent;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Chapter(metadata: $metadata, htmlContent: $htmlContent)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Chapter'))
      ..add(DiagnosticsProperty('metadata', metadata))
      ..add(DiagnosticsProperty('htmlContent', htmlContent));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chapter &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.htmlContent, htmlContent) ||
                other.htmlContent == htmlContent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, metadata, htmlContent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChapterCopyWith<_$_Chapter> get copyWith =>
      __$$_ChapterCopyWithImpl<_$_Chapter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChapterToJson(
      this,
    );
  }
}

abstract class _Chapter implements Chapter {
  const factory _Chapter(
      {required final ChapterMetadata metadata,
      required final String htmlContent}) = _$_Chapter;

  factory _Chapter.fromJson(Map<String, dynamic> json) = _$_Chapter.fromJson;

  @override
  ChapterMetadata get metadata;
  @override
  String get htmlContent;
  @override
  @JsonKey(ignore: true)
  _$$_ChapterCopyWith<_$_Chapter> get copyWith =>
      throw _privateConstructorUsedError;
}

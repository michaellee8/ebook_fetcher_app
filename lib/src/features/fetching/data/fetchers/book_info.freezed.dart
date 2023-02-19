// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookInfo {
  String get title => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  int get lastChapter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookInfoCopyWith<BookInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookInfoCopyWith<$Res> {
  factory $BookInfoCopyWith(BookInfo value, $Res Function(BookInfo) then) =
      _$BookInfoCopyWithImpl<$Res, BookInfo>;
  @useResult
  $Res call({String title, DateTime lastUpdate, int lastChapter});
}

/// @nodoc
class _$BookInfoCopyWithImpl<$Res, $Val extends BookInfo>
    implements $BookInfoCopyWith<$Res> {
  _$BookInfoCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookInfoCopyWith<$Res> implements $BookInfoCopyWith<$Res> {
  factory _$$_BookInfoCopyWith(
          _$_BookInfo value, $Res Function(_$_BookInfo) then) =
      __$$_BookInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, DateTime lastUpdate, int lastChapter});
}

/// @nodoc
class __$$_BookInfoCopyWithImpl<$Res>
    extends _$BookInfoCopyWithImpl<$Res, _$_BookInfo>
    implements _$$_BookInfoCopyWith<$Res> {
  __$$_BookInfoCopyWithImpl(
      _$_BookInfo _value, $Res Function(_$_BookInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? lastUpdate = null,
    Object? lastChapter = null,
  }) {
    return _then(_$_BookInfo(
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
    ));
  }
}

/// @nodoc

class _$_BookInfo with DiagnosticableTreeMixin implements _BookInfo {
  const _$_BookInfo(
      {required this.title,
      required this.lastUpdate,
      required this.lastChapter});

  @override
  final String title;
  @override
  final DateTime lastUpdate;
  @override
  final int lastChapter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookInfo(title: $title, lastUpdate: $lastUpdate, lastChapter: $lastChapter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookInfo'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('lastUpdate', lastUpdate))
      ..add(DiagnosticsProperty('lastChapter', lastChapter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookInfo &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.lastChapter, lastChapter) ||
                other.lastChapter == lastChapter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, lastUpdate, lastChapter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookInfoCopyWith<_$_BookInfo> get copyWith =>
      __$$_BookInfoCopyWithImpl<_$_BookInfo>(this, _$identity);
}

abstract class _BookInfo implements BookInfo {
  const factory _BookInfo(
      {required final String title,
      required final DateTime lastUpdate,
      required final int lastChapter}) = _$_BookInfo;

  @override
  String get title;
  @override
  DateTime get lastUpdate;
  @override
  int get lastChapter;
  @override
  @JsonKey(ignore: true)
  _$$_BookInfoCopyWith<_$_BookInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

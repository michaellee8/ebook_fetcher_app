// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetching_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchBookByIdResult {
  BookMetadata get metadata => throw _privateConstructorUsedError;
  bool get changed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchBookByIdResultCopyWith<FetchBookByIdResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchBookByIdResultCopyWith<$Res> {
  factory $FetchBookByIdResultCopyWith(
          FetchBookByIdResult value, $Res Function(FetchBookByIdResult) then) =
      _$FetchBookByIdResultCopyWithImpl<$Res, FetchBookByIdResult>;
  @useResult
  $Res call({BookMetadata metadata, bool changed});

  $BookMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$FetchBookByIdResultCopyWithImpl<$Res, $Val extends FetchBookByIdResult>
    implements $FetchBookByIdResultCopyWith<$Res> {
  _$FetchBookByIdResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
    Object? changed = null,
  }) {
    return _then(_value.copyWith(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as BookMetadata,
      changed: null == changed
          ? _value.changed
          : changed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookMetadataCopyWith<$Res> get metadata {
    return $BookMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FetchBookByIdResultCopyWith<$Res>
    implements $FetchBookByIdResultCopyWith<$Res> {
  factory _$$_FetchBookByIdResultCopyWith(_$_FetchBookByIdResult value,
          $Res Function(_$_FetchBookByIdResult) then) =
      __$$_FetchBookByIdResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BookMetadata metadata, bool changed});

  @override
  $BookMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$_FetchBookByIdResultCopyWithImpl<$Res>
    extends _$FetchBookByIdResultCopyWithImpl<$Res, _$_FetchBookByIdResult>
    implements _$$_FetchBookByIdResultCopyWith<$Res> {
  __$$_FetchBookByIdResultCopyWithImpl(_$_FetchBookByIdResult _value,
      $Res Function(_$_FetchBookByIdResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
    Object? changed = null,
  }) {
    return _then(_$_FetchBookByIdResult(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as BookMetadata,
      changed: null == changed
          ? _value.changed
          : changed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FetchBookByIdResult implements _FetchBookByIdResult {
  const _$_FetchBookByIdResult({required this.metadata, required this.changed});

  @override
  final BookMetadata metadata;
  @override
  final bool changed;

  @override
  String toString() {
    return 'FetchBookByIdResult(metadata: $metadata, changed: $changed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchBookByIdResult &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.changed, changed) || other.changed == changed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, metadata, changed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchBookByIdResultCopyWith<_$_FetchBookByIdResult> get copyWith =>
      __$$_FetchBookByIdResultCopyWithImpl<_$_FetchBookByIdResult>(
          this, _$identity);
}

abstract class _FetchBookByIdResult implements FetchBookByIdResult {
  const factory _FetchBookByIdResult(
      {required final BookMetadata metadata,
      required final bool changed}) = _$_FetchBookByIdResult;

  @override
  BookMetadata get metadata;
  @override
  bool get changed;
  @override
  @JsonKey(ignore: true)
  _$$_FetchBookByIdResultCopyWith<_$_FetchBookByIdResult> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListenResponse {
  Dataset get dataset => throw _privateConstructorUsedError;
  Surah get surah => throw _privateConstructorUsedError;
  Ayah get ayah => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListenResponseCopyWith<ListenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListenResponseCopyWith<$Res> {
  factory $ListenResponseCopyWith(
          ListenResponse value, $Res Function(ListenResponse) then) =
      _$ListenResponseCopyWithImpl<$Res, ListenResponse>;
  @useResult
  $Res call(
      {Dataset dataset, Surah surah, Ayah ayah, bool isLiked, Gender? gender});
}

/// @nodoc
class _$ListenResponseCopyWithImpl<$Res, $Val extends ListenResponse>
    implements $ListenResponseCopyWith<$Res> {
  _$ListenResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataset = null,
    Object? surah = null,
    Object? ayah = null,
    Object? isLiked = null,
    Object? gender = freezed,
  }) {
    return _then(_value.copyWith(
      dataset: null == dataset
          ? _value.dataset
          : dataset // ignore: cast_nullable_to_non_nullable
              as Dataset,
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as Surah,
      ayah: null == ayah
          ? _value.ayah
          : ayah // ignore: cast_nullable_to_non_nullable
              as Ayah,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListenResponseCopyWith<$Res>
    implements $ListenResponseCopyWith<$Res> {
  factory _$$_ListenResponseCopyWith(
          _$_ListenResponse value, $Res Function(_$_ListenResponse) then) =
      __$$_ListenResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Dataset dataset, Surah surah, Ayah ayah, bool isLiked, Gender? gender});
}

/// @nodoc
class __$$_ListenResponseCopyWithImpl<$Res>
    extends _$ListenResponseCopyWithImpl<$Res, _$_ListenResponse>
    implements _$$_ListenResponseCopyWith<$Res> {
  __$$_ListenResponseCopyWithImpl(
      _$_ListenResponse _value, $Res Function(_$_ListenResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataset = null,
    Object? surah = null,
    Object? ayah = null,
    Object? isLiked = null,
    Object? gender = freezed,
  }) {
    return _then(_$_ListenResponse(
      dataset: null == dataset
          ? _value.dataset
          : dataset // ignore: cast_nullable_to_non_nullable
              as Dataset,
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as Surah,
      ayah: null == ayah
          ? _value.ayah
          : ayah // ignore: cast_nullable_to_non_nullable
              as Ayah,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
    ));
  }
}

/// @nodoc

class _$_ListenResponse implements _ListenResponse {
  const _$_ListenResponse(
      {required this.dataset,
      required this.surah,
      required this.ayah,
      required this.isLiked,
      this.gender});

  @override
  final Dataset dataset;
  @override
  final Surah surah;
  @override
  final Ayah ayah;
  @override
  final bool isLiked;
  @override
  final Gender? gender;

  @override
  String toString() {
    return 'ListenResponse(dataset: $dataset, surah: $surah, ayah: $ayah, isLiked: $isLiked, gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListenResponse &&
            (identical(other.dataset, dataset) || other.dataset == dataset) &&
            (identical(other.surah, surah) || other.surah == surah) &&
            (identical(other.ayah, ayah) || other.ayah == ayah) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, dataset, surah, ayah, isLiked, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListenResponseCopyWith<_$_ListenResponse> get copyWith =>
      __$$_ListenResponseCopyWithImpl<_$_ListenResponse>(this, _$identity);
}

abstract class _ListenResponse implements ListenResponse {
  const factory _ListenResponse(
      {required final Dataset dataset,
      required final Surah surah,
      required final Ayah ayah,
      required final bool isLiked,
      final Gender? gender}) = _$_ListenResponse;

  @override
  Dataset get dataset;
  @override
  Surah get surah;
  @override
  Ayah get ayah;
  @override
  bool get isLiked;
  @override
  Gender? get gender;
  @override
  @JsonKey(ignore: true)
  _$$_ListenResponseCopyWith<_$_ListenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

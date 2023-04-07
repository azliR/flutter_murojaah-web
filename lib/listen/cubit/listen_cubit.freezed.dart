// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListenState {
  bool get isPlaying => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasListened => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  Surah get surah => throw _privateConstructorUsedError;
  Ayah get ayah => throw _privateConstructorUsedError;
  ListenResponse? get response => throw _privateConstructorUsedError;
  Dataset? get dataset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListenStateCopyWith<ListenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListenStateCopyWith<$Res> {
  factory $ListenStateCopyWith(
          ListenState value, $Res Function(ListenState) then) =
      _$ListenStateCopyWithImpl<$Res, ListenState>;
  @useResult
  $Res call(
      {bool isPlaying,
      bool isLoading,
      bool hasListened,
      String errorMessage,
      Surah surah,
      Ayah ayah,
      ListenResponse? response,
      Dataset? dataset});

  $ListenResponseCopyWith<$Res>? get response;
}

/// @nodoc
class _$ListenStateCopyWithImpl<$Res, $Val extends ListenState>
    implements $ListenStateCopyWith<$Res> {
  _$ListenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlaying = null,
    Object? isLoading = null,
    Object? hasListened = null,
    Object? errorMessage = null,
    Object? surah = null,
    Object? ayah = null,
    Object? response = freezed,
    Object? dataset = freezed,
  }) {
    return _then(_value.copyWith(
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasListened: null == hasListened
          ? _value.hasListened
          : hasListened // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as Surah,
      ayah: null == ayah
          ? _value.ayah
          : ayah // ignore: cast_nullable_to_non_nullable
              as Ayah,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ListenResponse?,
      dataset: freezed == dataset
          ? _value.dataset
          : dataset // ignore: cast_nullable_to_non_nullable
              as Dataset?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ListenResponseCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $ListenResponseCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ListenStateCopyWith<$Res>
    implements $ListenStateCopyWith<$Res> {
  factory _$$_ListenStateCopyWith(
          _$_ListenState value, $Res Function(_$_ListenState) then) =
      __$$_ListenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isPlaying,
      bool isLoading,
      bool hasListened,
      String errorMessage,
      Surah surah,
      Ayah ayah,
      ListenResponse? response,
      Dataset? dataset});

  @override
  $ListenResponseCopyWith<$Res>? get response;
}

/// @nodoc
class __$$_ListenStateCopyWithImpl<$Res>
    extends _$ListenStateCopyWithImpl<$Res, _$_ListenState>
    implements _$$_ListenStateCopyWith<$Res> {
  __$$_ListenStateCopyWithImpl(
      _$_ListenState _value, $Res Function(_$_ListenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlaying = null,
    Object? isLoading = null,
    Object? hasListened = null,
    Object? errorMessage = null,
    Object? surah = null,
    Object? ayah = null,
    Object? response = freezed,
    Object? dataset = freezed,
  }) {
    return _then(_$_ListenState(
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasListened: null == hasListened
          ? _value.hasListened
          : hasListened // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as Surah,
      ayah: null == ayah
          ? _value.ayah
          : ayah // ignore: cast_nullable_to_non_nullable
              as Ayah,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ListenResponse?,
      dataset: freezed == dataset
          ? _value.dataset
          : dataset // ignore: cast_nullable_to_non_nullable
              as Dataset?,
    ));
  }
}

/// @nodoc

class _$_ListenState implements _ListenState {
  _$_ListenState(
      {required this.isPlaying,
      required this.isLoading,
      required this.hasListened,
      required this.errorMessage,
      required this.surah,
      required this.ayah,
      this.response,
      this.dataset});

  @override
  final bool isPlaying;
  @override
  final bool isLoading;
  @override
  final bool hasListened;
  @override
  final String errorMessage;
  @override
  final Surah surah;
  @override
  final Ayah ayah;
  @override
  final ListenResponse? response;
  @override
  final Dataset? dataset;

  @override
  String toString() {
    return 'ListenState(isPlaying: $isPlaying, isLoading: $isLoading, hasListened: $hasListened, errorMessage: $errorMessage, surah: $surah, ayah: $ayah, response: $response, dataset: $dataset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListenState &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasListened, hasListened) ||
                other.hasListened == hasListened) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.surah, surah) || other.surah == surah) &&
            (identical(other.ayah, ayah) || other.ayah == ayah) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.dataset, dataset) || other.dataset == dataset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPlaying, isLoading,
      hasListened, errorMessage, surah, ayah, response, dataset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListenStateCopyWith<_$_ListenState> get copyWith =>
      __$$_ListenStateCopyWithImpl<_$_ListenState>(this, _$identity);
}

abstract class _ListenState implements ListenState {
  factory _ListenState(
      {required final bool isPlaying,
      required final bool isLoading,
      required final bool hasListened,
      required final String errorMessage,
      required final Surah surah,
      required final Ayah ayah,
      final ListenResponse? response,
      final Dataset? dataset}) = _$_ListenState;

  @override
  bool get isPlaying;
  @override
  bool get isLoading;
  @override
  bool get hasListened;
  @override
  String get errorMessage;
  @override
  Surah get surah;
  @override
  Ayah get ayah;
  @override
  ListenResponse? get response;
  @override
  Dataset? get dataset;
  @override
  @JsonKey(ignore: true)
  _$$_ListenStateCopyWith<_$_ListenState> get copyWith =>
      throw _privateConstructorUsedError;
}

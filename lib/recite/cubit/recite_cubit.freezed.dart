// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recite_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReciteState {
  List<Recording> get recordings => throw _privateConstructorUsedError;
  bool get isRecording => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  Surah get surah => throw _privateConstructorUsedError;
  Ayah get ayah => throw _privateConstructorUsedError;
  int? get playingRecordingIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReciteStateCopyWith<ReciteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReciteStateCopyWith<$Res> {
  factory $ReciteStateCopyWith(
          ReciteState value, $Res Function(ReciteState) then) =
      _$ReciteStateCopyWithImpl<$Res, ReciteState>;
  @useResult
  $Res call(
      {List<Recording> recordings,
      bool isRecording,
      String errorMessage,
      Surah surah,
      Ayah ayah,
      int? playingRecordingIndex});
}

/// @nodoc
class _$ReciteStateCopyWithImpl<$Res, $Val extends ReciteState>
    implements $ReciteStateCopyWith<$Res> {
  _$ReciteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordings = null,
    Object? isRecording = null,
    Object? errorMessage = null,
    Object? surah = null,
    Object? ayah = null,
    Object? playingRecordingIndex = freezed,
  }) {
    return _then(_value.copyWith(
      recordings: null == recordings
          ? _value.recordings
          : recordings // ignore: cast_nullable_to_non_nullable
              as List<Recording>,
      isRecording: null == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
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
      playingRecordingIndex: freezed == playingRecordingIndex
          ? _value.playingRecordingIndex
          : playingRecordingIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReciteStateCopyWith<$Res>
    implements $ReciteStateCopyWith<$Res> {
  factory _$$_ReciteStateCopyWith(
          _$_ReciteState value, $Res Function(_$_ReciteState) then) =
      __$$_ReciteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Recording> recordings,
      bool isRecording,
      String errorMessage,
      Surah surah,
      Ayah ayah,
      int? playingRecordingIndex});
}

/// @nodoc
class __$$_ReciteStateCopyWithImpl<$Res>
    extends _$ReciteStateCopyWithImpl<$Res, _$_ReciteState>
    implements _$$_ReciteStateCopyWith<$Res> {
  __$$_ReciteStateCopyWithImpl(
      _$_ReciteState _value, $Res Function(_$_ReciteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordings = null,
    Object? isRecording = null,
    Object? errorMessage = null,
    Object? surah = null,
    Object? ayah = null,
    Object? playingRecordingIndex = freezed,
  }) {
    return _then(_$_ReciteState(
      recordings: null == recordings
          ? _value._recordings
          : recordings // ignore: cast_nullable_to_non_nullable
              as List<Recording>,
      isRecording: null == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
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
      playingRecordingIndex: freezed == playingRecordingIndex
          ? _value.playingRecordingIndex
          : playingRecordingIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ReciteState extends _ReciteState {
  const _$_ReciteState(
      {required final List<Recording> recordings,
      required this.isRecording,
      required this.errorMessage,
      required this.surah,
      required this.ayah,
      this.playingRecordingIndex})
      : _recordings = recordings,
        super._();

  final List<Recording> _recordings;
  @override
  List<Recording> get recordings {
    if (_recordings is EqualUnmodifiableListView) return _recordings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recordings);
  }

  @override
  final bool isRecording;
  @override
  final String errorMessage;
  @override
  final Surah surah;
  @override
  final Ayah ayah;
  @override
  final int? playingRecordingIndex;

  @override
  String toString() {
    return 'ReciteState(recordings: $recordings, isRecording: $isRecording, errorMessage: $errorMessage, surah: $surah, ayah: $ayah, playingRecordingIndex: $playingRecordingIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReciteState &&
            const DeepCollectionEquality()
                .equals(other._recordings, _recordings) &&
            (identical(other.isRecording, isRecording) ||
                other.isRecording == isRecording) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.surah, surah) || other.surah == surah) &&
            (identical(other.ayah, ayah) || other.ayah == ayah) &&
            (identical(other.playingRecordingIndex, playingRecordingIndex) ||
                other.playingRecordingIndex == playingRecordingIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recordings),
      isRecording,
      errorMessage,
      surah,
      ayah,
      playingRecordingIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReciteStateCopyWith<_$_ReciteState> get copyWith =>
      __$$_ReciteStateCopyWithImpl<_$_ReciteState>(this, _$identity);
}

abstract class _ReciteState extends ReciteState {
  const factory _ReciteState(
      {required final List<Recording> recordings,
      required final bool isRecording,
      required final String errorMessage,
      required final Surah surah,
      required final Ayah ayah,
      final int? playingRecordingIndex}) = _$_ReciteState;
  const _ReciteState._() : super._();

  @override
  List<Recording> get recordings;
  @override
  bool get isRecording;
  @override
  String get errorMessage;
  @override
  Surah get surah;
  @override
  Ayah get ayah;
  @override
  int? get playingRecordingIndex;
  @override
  @JsonKey(ignore: true)
  _$$_ReciteStateCopyWith<_$_ReciteState> get copyWith =>
      throw _privateConstructorUsedError;
}

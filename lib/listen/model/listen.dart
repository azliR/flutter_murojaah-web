import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:murojaah_web/app/model/ayah.dart';
import 'package:murojaah_web/app/model/surah.dart';
import 'package:murojaah_web/recite/model/dataset.dart';

part 'listen.freezed.dart';

enum Gender {
  male,
  female;

  String get value {
    switch (this) {
      case Gender.male:
        return 'male';
      case Gender.female:
        return 'female';
    }
  }
}

@freezed
class ListenResponse with _$ListenResponse {
  const factory ListenResponse({
    required Dataset dataset,
    required Surah surah,
    required Ayah ayah,
    required bool isLiked,
    Gender? gender,
  }) = _ListenResponse;
}

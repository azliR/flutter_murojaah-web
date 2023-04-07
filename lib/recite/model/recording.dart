import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:murojaah_web/app/model/ayah.dart';
import 'package:murojaah_web/app/model/surah.dart';

class Recording extends Equatable {
  const Recording({
    required this.surah,
    required this.ayah,
    required this.audio,
  });

  final Surah surah;
  final Ayah ayah;
  final Uint8List audio;

  @override
  List<Object?> get props => [surah, ayah];
}

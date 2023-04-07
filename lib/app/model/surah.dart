import 'package:equatable/equatable.dart';
import 'package:murojaah_web/app/model/ayah.dart';

class Surah extends Equatable {
  const Surah({
    required this.id,
    required this.surahName,
    required this.surahText,
    required this.translationId,
    required this.countAyah,
    required this.ayahs,
  });

  factory Surah.initial() => const Surah(
        id: 0,
        surahName: '',
        surahText: '',
        translationId: '',
        countAyah: 0,
        ayahs: [],
      );

  final int id;
  final String surahName;
  final String surahText;
  final String translationId;
  final int countAyah;
  final List<Ayah> ayahs;

  @override
  List<Object?> get props =>
      [id, surahName, surahText, translationId, countAyah, ayahs];
}

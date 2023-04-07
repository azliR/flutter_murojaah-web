import 'package:equatable/equatable.dart';

class Ayah extends Equatable {
  const Ayah({
    required this.ayahId,
    required this.ayahNumber,
    required this.ayahText,
    required this.translationId,
  });

  factory Ayah.initial() => const Ayah(
        ayahId: 0,
        ayahNumber: 0,
        ayahText: '',
        translationId: '',
      );

  final int ayahId;
  final int ayahNumber;
  final String ayahText;
  final String translationId;

  @override
  List<Object?> get props => [ayahId, ayahNumber, ayahText, translationId];
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dataset.g.dart';

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
);

enum RecitationMode { continuous, discrete, none }

@firestoreSerializable
class Dataset extends Equatable {
  const Dataset({
    required this.surahNumber,
    required this.ayahNumber,
    required this.url,
    required this.age,
    required this.country,
    required this.gender,
    required this.qiraah,
    required this.recitationMode,
    required this.submittedAt,
    required this.hasEvaluated,
    required this.label,
    this.id,
  });

  factory Dataset.fromJson(Map<String, dynamic> json) =>
      _$DatasetFromJson(json);

  @Id()
  final String? id;
  final int surahNumber;
  final int ayahNumber;
  final String url;
  final int age;
  final String? country;
  final String? gender;
  final String? qiraah;
  final RecitationMode recitationMode;
  final DateTime submittedAt;
  final bool hasEvaluated;
  final bool? label;

  Map<String, Object?> toJson() => _$DatasetToJson(this);

  @override
  List<Object?> get props => [
        id,
        surahNumber,
        ayahNumber,
        url,
        age,
        country,
        gender,
        qiraah,
        recitationMode,
        submittedAt,
        hasEvaluated,
        label,
      ];
}

@Collection<Dataset>('datasets')
final datasetsRef = DatasetCollectionReference();

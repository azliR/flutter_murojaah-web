// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dataset.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class DatasetCollectionReference
    implements
        DatasetQuery,
        FirestoreCollectionReference<Dataset, DatasetQuerySnapshot> {
  factory DatasetCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$DatasetCollectionReference;

  static Dataset fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Dataset.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    Dataset value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<Dataset> get reference;

  @override
  DatasetDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<DatasetDocumentReference> add(Dataset value);
}

class _$DatasetCollectionReference extends _$DatasetQuery
    implements DatasetCollectionReference {
  factory _$DatasetCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$DatasetCollectionReference._(
      firestore.collection('datasets').withConverter(
            fromFirestore: DatasetCollectionReference.fromFirestore,
            toFirestore: DatasetCollectionReference.toFirestore,
          ),
    );
  }

  _$DatasetCollectionReference._(
    CollectionReference<Dataset> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Dataset> get reference =>
      super.reference as CollectionReference<Dataset>;

  @override
  DatasetDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return DatasetDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<DatasetDocumentReference> add(Dataset value) {
    return reference.add(value).then((ref) => DatasetDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$DatasetCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class DatasetDocumentReference
    extends FirestoreDocumentReference<Dataset, DatasetDocumentSnapshot> {
  factory DatasetDocumentReference(DocumentReference<Dataset> reference) =
      _$DatasetDocumentReference;

  DocumentReference<Dataset> get reference;

  /// A reference to the [DatasetCollectionReference] containing this document.
  DatasetCollectionReference get parent {
    return _$DatasetCollectionReference(reference.firestore);
  }

  @override
  Stream<DatasetDocumentSnapshot> snapshots();

  @override
  Future<DatasetDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    int surahNumber,
    FieldValue surahNumberFieldValue,
    int ayahNumber,
    FieldValue ayahNumberFieldValue,
    String url,
    FieldValue urlFieldValue,
    int age,
    FieldValue ageFieldValue,
    String? country,
    FieldValue countryFieldValue,
    String? gender,
    FieldValue genderFieldValue,
    String? qiraah,
    FieldValue qiraahFieldValue,
    DateTime submittedAt,
    FieldValue submittedAtFieldValue,
    bool hasEvaluated,
    FieldValue hasEvaluatedFieldValue,
    bool? label,
    FieldValue labelFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    int surahNumber,
    FieldValue surahNumberFieldValue,
    int ayahNumber,
    FieldValue ayahNumberFieldValue,
    String url,
    FieldValue urlFieldValue,
    int age,
    FieldValue ageFieldValue,
    String? country,
    FieldValue countryFieldValue,
    String? gender,
    FieldValue genderFieldValue,
    String? qiraah,
    FieldValue qiraahFieldValue,
    DateTime submittedAt,
    FieldValue submittedAtFieldValue,
    bool hasEvaluated,
    FieldValue hasEvaluatedFieldValue,
    bool? label,
    FieldValue labelFieldValue,
  });
}

class _$DatasetDocumentReference
    extends FirestoreDocumentReference<Dataset, DatasetDocumentSnapshot>
    implements DatasetDocumentReference {
  _$DatasetDocumentReference(this.reference);

  @override
  final DocumentReference<Dataset> reference;

  /// A reference to the [DatasetCollectionReference] containing this document.
  DatasetCollectionReference get parent {
    return _$DatasetCollectionReference(reference.firestore);
  }

  @override
  Stream<DatasetDocumentSnapshot> snapshots() {
    return reference.snapshots().map(DatasetDocumentSnapshot._);
  }

  @override
  Future<DatasetDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(DatasetDocumentSnapshot._);
  }

  @override
  Future<DatasetDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(DatasetDocumentSnapshot._);
  }

  Future<void> update({
    Object? surahNumber = _sentinel,
    FieldValue? surahNumberFieldValue,
    Object? ayahNumber = _sentinel,
    FieldValue? ayahNumberFieldValue,
    Object? url = _sentinel,
    FieldValue? urlFieldValue,
    Object? age = _sentinel,
    FieldValue? ageFieldValue,
    Object? country = _sentinel,
    FieldValue? countryFieldValue,
    Object? gender = _sentinel,
    FieldValue? genderFieldValue,
    Object? qiraah = _sentinel,
    FieldValue? qiraahFieldValue,
    Object? submittedAt = _sentinel,
    FieldValue? submittedAtFieldValue,
    Object? hasEvaluated = _sentinel,
    FieldValue? hasEvaluatedFieldValue,
    Object? label = _sentinel,
    FieldValue? labelFieldValue,
  }) async {
    assert(
      surahNumber == _sentinel || surahNumberFieldValue == null,
      "Cannot specify both surahNumber and surahNumberFieldValue",
    );
    assert(
      ayahNumber == _sentinel || ayahNumberFieldValue == null,
      "Cannot specify both ayahNumber and ayahNumberFieldValue",
    );
    assert(
      url == _sentinel || urlFieldValue == null,
      "Cannot specify both url and urlFieldValue",
    );
    assert(
      age == _sentinel || ageFieldValue == null,
      "Cannot specify both age and ageFieldValue",
    );
    assert(
      country == _sentinel || countryFieldValue == null,
      "Cannot specify both country and countryFieldValue",
    );
    assert(
      gender == _sentinel || genderFieldValue == null,
      "Cannot specify both gender and genderFieldValue",
    );
    assert(
      qiraah == _sentinel || qiraahFieldValue == null,
      "Cannot specify both qiraah and qiraahFieldValue",
    );
    assert(
      submittedAt == _sentinel || submittedAtFieldValue == null,
      "Cannot specify both submittedAt and submittedAtFieldValue",
    );
    assert(
      hasEvaluated == _sentinel || hasEvaluatedFieldValue == null,
      "Cannot specify both hasEvaluated and hasEvaluatedFieldValue",
    );
    assert(
      label == _sentinel || labelFieldValue == null,
      "Cannot specify both label and labelFieldValue",
    );
    final json = {
      if (surahNumber != _sentinel)
        _$DatasetFieldMap['surahNumber']!: surahNumber as int,
      if (surahNumberFieldValue != null)
        _$DatasetFieldMap['surahNumber']!: surahNumberFieldValue,
      if (ayahNumber != _sentinel)
        _$DatasetFieldMap['ayahNumber']!: ayahNumber as int,
      if (ayahNumberFieldValue != null)
        _$DatasetFieldMap['ayahNumber']!: ayahNumberFieldValue,
      if (url != _sentinel) _$DatasetFieldMap['url']!: url as String,
      if (urlFieldValue != null) _$DatasetFieldMap['url']!: urlFieldValue,
      if (age != _sentinel) _$DatasetFieldMap['age']!: age as int,
      if (ageFieldValue != null) _$DatasetFieldMap['age']!: ageFieldValue,
      if (country != _sentinel)
        _$DatasetFieldMap['country']!: country as String?,
      if (countryFieldValue != null)
        _$DatasetFieldMap['country']!: countryFieldValue,
      if (gender != _sentinel) _$DatasetFieldMap['gender']!: gender as String?,
      if (genderFieldValue != null)
        _$DatasetFieldMap['gender']!: genderFieldValue,
      if (qiraah != _sentinel) _$DatasetFieldMap['qiraah']!: qiraah as String?,
      if (qiraahFieldValue != null)
        _$DatasetFieldMap['qiraah']!: qiraahFieldValue,
      if (submittedAt != _sentinel)
        _$DatasetFieldMap['submittedAt']!: submittedAt as DateTime,
      if (submittedAtFieldValue != null)
        _$DatasetFieldMap['submittedAt']!: submittedAtFieldValue,
      if (hasEvaluated != _sentinel)
        _$DatasetFieldMap['hasEvaluated']!: hasEvaluated as bool,
      if (hasEvaluatedFieldValue != null)
        _$DatasetFieldMap['hasEvaluated']!: hasEvaluatedFieldValue,
      if (label != _sentinel) _$DatasetFieldMap['label']!: label as bool?,
      if (labelFieldValue != null) _$DatasetFieldMap['label']!: labelFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? surahNumber = _sentinel,
    FieldValue? surahNumberFieldValue,
    Object? ayahNumber = _sentinel,
    FieldValue? ayahNumberFieldValue,
    Object? url = _sentinel,
    FieldValue? urlFieldValue,
    Object? age = _sentinel,
    FieldValue? ageFieldValue,
    Object? country = _sentinel,
    FieldValue? countryFieldValue,
    Object? gender = _sentinel,
    FieldValue? genderFieldValue,
    Object? qiraah = _sentinel,
    FieldValue? qiraahFieldValue,
    Object? submittedAt = _sentinel,
    FieldValue? submittedAtFieldValue,
    Object? hasEvaluated = _sentinel,
    FieldValue? hasEvaluatedFieldValue,
    Object? label = _sentinel,
    FieldValue? labelFieldValue,
  }) {
    assert(
      surahNumber == _sentinel || surahNumberFieldValue == null,
      "Cannot specify both surahNumber and surahNumberFieldValue",
    );
    assert(
      ayahNumber == _sentinel || ayahNumberFieldValue == null,
      "Cannot specify both ayahNumber and ayahNumberFieldValue",
    );
    assert(
      url == _sentinel || urlFieldValue == null,
      "Cannot specify both url and urlFieldValue",
    );
    assert(
      age == _sentinel || ageFieldValue == null,
      "Cannot specify both age and ageFieldValue",
    );
    assert(
      country == _sentinel || countryFieldValue == null,
      "Cannot specify both country and countryFieldValue",
    );
    assert(
      gender == _sentinel || genderFieldValue == null,
      "Cannot specify both gender and genderFieldValue",
    );
    assert(
      qiraah == _sentinel || qiraahFieldValue == null,
      "Cannot specify both qiraah and qiraahFieldValue",
    );
    assert(
      submittedAt == _sentinel || submittedAtFieldValue == null,
      "Cannot specify both submittedAt and submittedAtFieldValue",
    );
    assert(
      hasEvaluated == _sentinel || hasEvaluatedFieldValue == null,
      "Cannot specify both hasEvaluated and hasEvaluatedFieldValue",
    );
    assert(
      label == _sentinel || labelFieldValue == null,
      "Cannot specify both label and labelFieldValue",
    );
    final json = {
      if (surahNumber != _sentinel)
        _$DatasetFieldMap['surahNumber']!: surahNumber as int,
      if (surahNumberFieldValue != null)
        _$DatasetFieldMap['surahNumber']!: surahNumberFieldValue,
      if (ayahNumber != _sentinel)
        _$DatasetFieldMap['ayahNumber']!: ayahNumber as int,
      if (ayahNumberFieldValue != null)
        _$DatasetFieldMap['ayahNumber']!: ayahNumberFieldValue,
      if (url != _sentinel) _$DatasetFieldMap['url']!: url as String,
      if (urlFieldValue != null) _$DatasetFieldMap['url']!: urlFieldValue,
      if (age != _sentinel) _$DatasetFieldMap['age']!: age as int,
      if (ageFieldValue != null) _$DatasetFieldMap['age']!: ageFieldValue,
      if (country != _sentinel)
        _$DatasetFieldMap['country']!: country as String?,
      if (countryFieldValue != null)
        _$DatasetFieldMap['country']!: countryFieldValue,
      if (gender != _sentinel) _$DatasetFieldMap['gender']!: gender as String?,
      if (genderFieldValue != null)
        _$DatasetFieldMap['gender']!: genderFieldValue,
      if (qiraah != _sentinel) _$DatasetFieldMap['qiraah']!: qiraah as String?,
      if (qiraahFieldValue != null)
        _$DatasetFieldMap['qiraah']!: qiraahFieldValue,
      if (submittedAt != _sentinel)
        _$DatasetFieldMap['submittedAt']!: submittedAt as DateTime,
      if (submittedAtFieldValue != null)
        _$DatasetFieldMap['submittedAt']!: submittedAtFieldValue,
      if (hasEvaluated != _sentinel)
        _$DatasetFieldMap['hasEvaluated']!: hasEvaluated as bool,
      if (hasEvaluatedFieldValue != null)
        _$DatasetFieldMap['hasEvaluated']!: hasEvaluatedFieldValue,
      if (label != _sentinel) _$DatasetFieldMap['label']!: label as bool?,
      if (labelFieldValue != null) _$DatasetFieldMap['label']!: labelFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is DatasetDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class DatasetQuery
    implements QueryReference<Dataset, DatasetQuerySnapshot> {
  @override
  DatasetQuery limit(int limit);

  @override
  DatasetQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  DatasetQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  DatasetQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  DatasetQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  DatasetQuery whereSurahNumber({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });
  DatasetQuery whereAyahNumber({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });
  DatasetQuery whereUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  DatasetQuery whereAge({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });
  DatasetQuery whereCountry({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  DatasetQuery whereGender({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  DatasetQuery whereQiraah({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  DatasetQuery whereSubmittedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  });
  DatasetQuery whereHasEvaluated({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  DatasetQuery whereLabel({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool?>? whereIn,
    List<bool?>? whereNotIn,
  });

  DatasetQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  });

  DatasetQuery orderBySurahNumber({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  });

  DatasetQuery orderByAyahNumber({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  });

  DatasetQuery orderByUrl({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  });

  DatasetQuery orderByAge({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  });

  DatasetQuery orderByCountry({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  });

  DatasetQuery orderByGender({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  });

  DatasetQuery orderByQiraah({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  });

  DatasetQuery orderBySubmittedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  });

  DatasetQuery orderByHasEvaluated({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  });

  DatasetQuery orderByLabel({
    bool descending = false,
    bool? startAt,
    bool? startAfter,
    bool? endAt,
    bool? endBefore,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  });
}

class _$DatasetQuery extends QueryReference<Dataset, DatasetQuerySnapshot>
    implements DatasetQuery {
  _$DatasetQuery(
    this._collection, {
    required Query<Dataset> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<DatasetQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(DatasetQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<DatasetQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(DatasetQuerySnapshot._fromQuerySnapshot);
  }

  @override
  DatasetQuery limit(int limit) {
    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  DatasetQuery limitToLast(int limit) {
    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  DatasetQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  DatasetQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  DatasetQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  DatasetQuery whereSurahNumber({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$DatasetFieldMap['surahNumber']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  DatasetQuery whereAyahNumber({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$DatasetFieldMap['ayahNumber']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  DatasetQuery whereUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$DatasetFieldMap['url']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  DatasetQuery whereAge({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$DatasetFieldMap['age']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  DatasetQuery whereCountry({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$DatasetFieldMap['country']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  DatasetQuery whereGender({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$DatasetFieldMap['gender']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  DatasetQuery whereQiraah({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$DatasetFieldMap['qiraah']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  DatasetQuery whereSubmittedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  }) {
    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$DatasetFieldMap['submittedAt']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  DatasetQuery whereHasEvaluated({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$DatasetFieldMap['hasEvaluated']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  DatasetQuery whereLabel({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool?>? whereIn,
    List<bool?>? whereNotIn,
  }) {
    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$DatasetFieldMap['label']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  DatasetQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  DatasetQuery orderBySurahNumber({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$DatasetFieldMap['surahNumber']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  DatasetQuery orderByAyahNumber({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$DatasetFieldMap['ayahNumber']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  DatasetQuery orderByUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$DatasetFieldMap['url']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  DatasetQuery orderByAge({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$DatasetFieldMap['age']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  DatasetQuery orderByCountry({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$DatasetFieldMap['country']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  DatasetQuery orderByGender({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$DatasetFieldMap['gender']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  DatasetQuery orderByQiraah({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$DatasetFieldMap['qiraah']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  DatasetQuery orderBySubmittedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$DatasetFieldMap['submittedAt']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  DatasetQuery orderByHasEvaluated({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$DatasetFieldMap['hasEvaluated']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  DatasetQuery orderByLabel({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    DatasetDocumentSnapshot? startAtDocument,
    DatasetDocumentSnapshot? endAtDocument,
    DatasetDocumentSnapshot? endBeforeDocument,
    DatasetDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$DatasetFieldMap['label']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$DatasetQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$DatasetQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class DatasetDocumentSnapshot extends FirestoreDocumentSnapshot<Dataset> {
  DatasetDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Dataset> snapshot;

  @override
  DatasetDocumentReference get reference {
    return DatasetDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Dataset? data;
}

class DatasetQuerySnapshot
    extends FirestoreQuerySnapshot<Dataset, DatasetQueryDocumentSnapshot> {
  DatasetQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory DatasetQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Dataset> snapshot,
  ) {
    final docs = snapshot.docs.map(DatasetQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        DatasetDocumentSnapshot._,
      );
    }).toList();

    return DatasetQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<DatasetDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    DatasetDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<DatasetDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Dataset> snapshot;

  @override
  final List<DatasetQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<DatasetDocumentSnapshot>> docChanges;
}

class DatasetQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Dataset>
    implements DatasetDocumentSnapshot {
  DatasetQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Dataset> snapshot;

  @override
  final Dataset data;

  @override
  DatasetDocumentReference get reference {
    return DatasetDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dataset _$DatasetFromJson(Map<String, dynamic> json) => Dataset(
      surahNumber: json['surahNumber'] as int,
      ayahNumber: json['ayahNumber'] as int,
      url: json['url'] as String,
      age: json['age'] as int,
      country: json['country'] as String?,
      gender: json['gender'] as String?,
      qiraah: json['qiraah'] as String?,
      recitationMode:
          $enumDecode(_$RecitationModeEnumMap, json['recitationMode']),
      submittedAt: const FirestoreDateTimeConverter()
          .fromJson(json['submittedAt'] as Timestamp),
      hasEvaluated: json['hasEvaluated'] as bool,
      label: json['label'] as bool?,
      id: json['id'] as String?,
    );

const _$DatasetFieldMap = <String, String>{
  'id': 'id',
  'surahNumber': 'surahNumber',
  'ayahNumber': 'ayahNumber',
  'url': 'url',
  'age': 'age',
  'country': 'country',
  'gender': 'gender',
  'qiraah': 'qiraah',
  'recitationMode': 'recitationMode',
  'submittedAt': 'submittedAt',
  'hasEvaluated': 'hasEvaluated',
  'label': 'label',
};

Map<String, dynamic> _$DatasetToJson(Dataset instance) => <String, dynamic>{
      'id': instance.id,
      'surahNumber': instance.surahNumber,
      'ayahNumber': instance.ayahNumber,
      'url': instance.url,
      'age': instance.age,
      'country': instance.country,
      'gender': instance.gender,
      'qiraah': instance.qiraah,
      'recitationMode': _$RecitationModeEnumMap[instance.recitationMode]!,
      'submittedAt':
          const FirestoreDateTimeConverter().toJson(instance.submittedAt),
      'hasEvaluated': instance.hasEvaluated,
      'label': instance.label,
    };

const _$RecitationModeEnumMap = {
  RecitationMode.continuous: 'continuous',
  RecitationMode.discrete: 'discrete',
  RecitationMode.none: 'none',
};

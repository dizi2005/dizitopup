import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GamesRecord extends FirestoreRecord {
  GamesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image_game" field.
  String? _imageGame;
  String get imageGame => _imageGame ?? '';
  bool hasImageGame() => _imageGame != null;

  // "creat_at" field.
  DateTime? _creatAt;
  DateTime? get creatAt => _creatAt;
  bool hasCreatAt() => _creatAt != null;

  // "update_at" field.
  DateTime? _updateAt;
  DateTime? get updateAt => _updateAt;
  bool hasUpdateAt() => _updateAt != null;

  // "name_game" field.
  String? _nameGame;
  String get nameGame => _nameGame ?? '';
  bool hasNameGame() => _nameGame != null;

  // "id_type" field.
  String? _idType;
  String get idType => _idType ?? '';
  bool hasIdType() => _idType != null;

  void _initializeFields() {
    _imageGame = snapshotData['image_game'] as String?;
    _creatAt = snapshotData['creat_at'] as DateTime?;
    _updateAt = snapshotData['update_at'] as DateTime?;
    _nameGame = snapshotData['name_game'] as String?;
    _idType = snapshotData['id_type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('games');

  static Stream<GamesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GamesRecord.fromSnapshot(s));

  static Future<GamesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GamesRecord.fromSnapshot(s));

  static GamesRecord fromSnapshot(DocumentSnapshot snapshot) => GamesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GamesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GamesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GamesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GamesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGamesRecordData({
  String? imageGame,
  DateTime? creatAt,
  DateTime? updateAt,
  String? nameGame,
  String? idType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image_game': imageGame,
      'creat_at': creatAt,
      'update_at': updateAt,
      'name_game': nameGame,
      'id_type': idType,
    }.withoutNulls,
  );

  return firestoreData;
}

class GamesRecordDocumentEquality implements Equality<GamesRecord> {
  const GamesRecordDocumentEquality();

  @override
  bool equals(GamesRecord? e1, GamesRecord? e2) {
    return e1?.imageGame == e2?.imageGame &&
        e1?.creatAt == e2?.creatAt &&
        e1?.updateAt == e2?.updateAt &&
        e1?.nameGame == e2?.nameGame &&
        e1?.idType == e2?.idType;
  }

  @override
  int hash(GamesRecord? e) => const ListEquality()
      .hash([e?.imageGame, e?.creatAt, e?.updateAt, e?.nameGame, e?.idType]);

  @override
  bool isValidKey(Object? o) => o is GamesRecord;
}

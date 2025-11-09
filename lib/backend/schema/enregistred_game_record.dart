import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnregistredGameRecord extends FirestoreRecord {
  EnregistredGameRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "player_uid" field.
  String? _playerUid;
  String get playerUid => _playerUid ?? '';
  bool hasPlayerUid() => _playerUid != null;

  // "avatar_img_id" field.
  String? _avatarImgId;
  String get avatarImgId => _avatarImgId ?? '';
  bool hasAvatarImgId() => _avatarImgId != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "game" field.
  String? _game;
  String get game => _game ?? '';
  bool hasGame() => _game != null;

  // "level" field.
  int? _level;
  int get level => _level ?? 0;
  bool hasLevel() => _level != null;

  // "isValide" field.
  bool? _isValide;
  bool get isValide => _isValide ?? false;
  bool hasIsValide() => _isValide != null;

  // "bannerUrl" field.
  String? _bannerUrl;
  String get bannerUrl => _bannerUrl ?? '';
  bool hasBannerUrl() => _bannerUrl != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as DocumentReference?;
    _playerUid = snapshotData['player_uid'] as String?;
    _avatarImgId = snapshotData['avatar_img_id'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _game = snapshotData['game'] as String?;
    _level = castToType<int>(snapshotData['level']);
    _isValide = snapshotData['isValide'] as bool?;
    _bannerUrl = snapshotData['bannerUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('enregistredGame');

  static Stream<EnregistredGameRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EnregistredGameRecord.fromSnapshot(s));

  static Future<EnregistredGameRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EnregistredGameRecord.fromSnapshot(s));

  static EnregistredGameRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EnregistredGameRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EnregistredGameRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EnregistredGameRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EnregistredGameRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EnregistredGameRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEnregistredGameRecordData({
  DocumentReference? userId,
  String? playerUid,
  String? avatarImgId,
  String? userName,
  String? game,
  int? level,
  bool? isValide,
  String? bannerUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'player_uid': playerUid,
      'avatar_img_id': avatarImgId,
      'user_name': userName,
      'game': game,
      'level': level,
      'isValide': isValide,
      'bannerUrl': bannerUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class EnregistredGameRecordDocumentEquality
    implements Equality<EnregistredGameRecord> {
  const EnregistredGameRecordDocumentEquality();

  @override
  bool equals(EnregistredGameRecord? e1, EnregistredGameRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.playerUid == e2?.playerUid &&
        e1?.avatarImgId == e2?.avatarImgId &&
        e1?.userName == e2?.userName &&
        e1?.game == e2?.game &&
        e1?.level == e2?.level &&
        e1?.isValide == e2?.isValide &&
        e1?.bannerUrl == e2?.bannerUrl;
  }

  @override
  int hash(EnregistredGameRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.playerUid,
        e?.avatarImgId,
        e?.userName,
        e?.game,
        e?.level,
        e?.isValide,
        e?.bannerUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is EnregistredGameRecord;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BannerImageRecord extends FirestoreRecord {
  BannerImageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "substitle" field.
  String? _substitle;
  String get substitle => _substitle ?? '';
  bool hasSubstitle() => _substitle != null;

  // "text_btn" field.
  String? _textBtn;
  String get textBtn => _textBtn ?? '';
  bool hasTextBtn() => _textBtn != null;

  // "img_url" field.
  String? _imgUrl;
  String get imgUrl => _imgUrl ?? '';
  bool hasImgUrl() => _imgUrl != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "ads_type" field.
  String? _adsType;
  String get adsType => _adsType ?? '';
  bool hasAdsType() => _adsType != null;

  // "update_at" field.
  DateTime? _updateAt;
  DateTime? get updateAt => _updateAt;
  bool hasUpdateAt() => _updateAt != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _substitle = snapshotData['substitle'] as String?;
    _textBtn = snapshotData['text_btn'] as String?;
    _imgUrl = snapshotData['img_url'] as String?;
    _type = snapshotData['type'] as String?;
    _adsType = snapshotData['ads_type'] as String?;
    _updateAt = snapshotData['update_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bannerImage');

  static Stream<BannerImageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BannerImageRecord.fromSnapshot(s));

  static Future<BannerImageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BannerImageRecord.fromSnapshot(s));

  static BannerImageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BannerImageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BannerImageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BannerImageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BannerImageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BannerImageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBannerImageRecordData({
  String? title,
  String? substitle,
  String? textBtn,
  String? imgUrl,
  String? type,
  String? adsType,
  DateTime? updateAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'substitle': substitle,
      'text_btn': textBtn,
      'img_url': imgUrl,
      'type': type,
      'ads_type': adsType,
      'update_at': updateAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class BannerImageRecordDocumentEquality implements Equality<BannerImageRecord> {
  const BannerImageRecordDocumentEquality();

  @override
  bool equals(BannerImageRecord? e1, BannerImageRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.substitle == e2?.substitle &&
        e1?.textBtn == e2?.textBtn &&
        e1?.imgUrl == e2?.imgUrl &&
        e1?.type == e2?.type &&
        e1?.adsType == e2?.adsType &&
        e1?.updateAt == e2?.updateAt;
  }

  @override
  int hash(BannerImageRecord? e) => const ListEquality().hash([
        e?.title,
        e?.substitle,
        e?.textBtn,
        e?.imgUrl,
        e?.type,
        e?.adsType,
        e?.updateAt
      ]);

  @override
  bool isValidKey(Object? o) => o is BannerImageRecord;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "price_usd" field.
  double? _priceUsd;
  double get priceUsd => _priceUsd ?? 0.0;
  bool hasPriceUsd() => _priceUsd != null;

  // "game" field.
  String? _game;
  String get game => _game ?? '';
  bool hasGame() => _game != null;

  // "is_special" field.
  bool? _isSpecial;
  bool get isSpecial => _isSpecial ?? false;
  bool hasIsSpecial() => _isSpecial != null;

  // "is_active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "game_img_url" field.
  String? _gameImgUrl;
  String get gameImgUrl => _gameImgUrl ?? '';
  bool hasGameImgUrl() => _gameImgUrl != null;

  // "denom_img_url" field.
  String? _denomImgUrl;
  String get denomImgUrl => _denomImgUrl ?? '';
  bool hasDenomImgUrl() => _denomImgUrl != null;

  // "price_htg" field.
  double? _priceHtg;
  double get priceHtg => _priceHtg ?? 0.0;
  bool hasPriceHtg() => _priceHtg != null;

  // "price_after_htg" field.
  double? _priceAfterHtg;
  double get priceAfterHtg => _priceAfterHtg ?? 0.0;
  bool hasPriceAfterHtg() => _priceAfterHtg != null;

  // "price_after_usd" field.
  double? _priceAfterUsd;
  double get priceAfterUsd => _priceAfterUsd ?? 0.0;
  bool hasPriceAfterUsd() => _priceAfterUsd != null;

  // "baner_img_url" field.
  String? _banerImgUrl;
  String get banerImgUrl => _banerImgUrl ?? '';
  bool hasBanerImgUrl() => _banerImgUrl != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "price_try" field.
  double? _priceTry;
  double get priceTry => _priceTry ?? 0.0;
  bool hasPriceTry() => _priceTry != null;

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "last_update" field.
  DateTime? _lastUpdate;
  DateTime? get lastUpdate => _lastUpdate;
  bool hasLastUpdate() => _lastUpdate != null;

  void _initializeFields() {
    _productName = snapshotData['product_name'] as String?;
    _priceUsd = castToType<double>(snapshotData['price_usd']);
    _game = snapshotData['game'] as String?;
    _isSpecial = snapshotData['is_special'] as bool?;
    _isActive = snapshotData['is_active'] as bool?;
    _gameImgUrl = snapshotData['game_img_url'] as String?;
    _denomImgUrl = snapshotData['denom_img_url'] as String?;
    _priceHtg = castToType<double>(snapshotData['price_htg']);
    _priceAfterHtg = castToType<double>(snapshotData['price_after_htg']);
    _priceAfterUsd = castToType<double>(snapshotData['price_after_usd']);
    _banerImgUrl = snapshotData['baner_img_url'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _priceTry = castToType<double>(snapshotData['price_try']);
    _productId = snapshotData['product_id'] as String?;
    _lastUpdate = snapshotData['last_update'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? productName,
  double? priceUsd,
  String? game,
  bool? isSpecial,
  bool? isActive,
  String? gameImgUrl,
  String? denomImgUrl,
  double? priceHtg,
  double? priceAfterHtg,
  double? priceAfterUsd,
  String? banerImgUrl,
  DocumentReference? user,
  double? priceTry,
  String? productId,
  DateTime? lastUpdate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'product_name': productName,
      'price_usd': priceUsd,
      'game': game,
      'is_special': isSpecial,
      'is_active': isActive,
      'game_img_url': gameImgUrl,
      'denom_img_url': denomImgUrl,
      'price_htg': priceHtg,
      'price_after_htg': priceAfterHtg,
      'price_after_usd': priceAfterUsd,
      'baner_img_url': banerImgUrl,
      'user': user,
      'price_try': priceTry,
      'product_id': productId,
      'last_update': lastUpdate,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    return e1?.productName == e2?.productName &&
        e1?.priceUsd == e2?.priceUsd &&
        e1?.game == e2?.game &&
        e1?.isSpecial == e2?.isSpecial &&
        e1?.isActive == e2?.isActive &&
        e1?.gameImgUrl == e2?.gameImgUrl &&
        e1?.denomImgUrl == e2?.denomImgUrl &&
        e1?.priceHtg == e2?.priceHtg &&
        e1?.priceAfterHtg == e2?.priceAfterHtg &&
        e1?.priceAfterUsd == e2?.priceAfterUsd &&
        e1?.banerImgUrl == e2?.banerImgUrl &&
        e1?.user == e2?.user &&
        e1?.priceTry == e2?.priceTry &&
        e1?.productId == e2?.productId &&
        e1?.lastUpdate == e2?.lastUpdate;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.productName,
        e?.priceUsd,
        e?.game,
        e?.isSpecial,
        e?.isActive,
        e?.gameImgUrl,
        e?.denomImgUrl,
        e?.priceHtg,
        e?.priceAfterHtg,
        e?.priceAfterUsd,
        e?.banerImgUrl,
        e?.user,
        e?.priceTry,
        e?.productId,
        e?.lastUpdate
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}

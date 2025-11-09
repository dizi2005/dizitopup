import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionRecord extends FirestoreRecord {
  TransactionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "transaction_id" field.
  String? _transactionId;
  String get transactionId => _transactionId ?? '';
  bool hasTransactionId() => _transactionId != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "payment_methode" field.
  String? _paymentMethode;
  String get paymentMethode => _paymentMethode ?? '';
  bool hasPaymentMethode() => _paymentMethode != null;

  // "product_buy" field.
  DocumentReference? _productBuy;
  DocumentReference? get productBuy => _productBuy;
  bool hasProductBuy() => _productBuy != null;

  // "delivery_methode" field.
  String? _deliveryMethode;
  String get deliveryMethode => _deliveryMethode ?? '';
  bool hasDeliveryMethode() => _deliveryMethode != null;

  // "statu" field.
  int? _statu;
  int get statu => _statu ?? 0;
  bool hasStatu() => _statu != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "creat_at" field.
  DateTime? _creatAt;
  DateTime? get creatAt => _creatAt;
  bool hasCreatAt() => _creatAt != null;

  // "creat_at_sec" field.
  int? _creatAtSec;
  int get creatAtSec => _creatAtSec ?? 0;
  bool hasCreatAtSec() => _creatAtSec != null;

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "paymentMessage" field.
  String? _paymentMessage;
  String get paymentMessage => _paymentMessage ?? '';
  bool hasPaymentMessage() => _paymentMessage != null;

  // "delivery_statut" field.
  int? _deliveryStatut;
  int get deliveryStatut => _deliveryStatut ?? 0;
  bool hasDeliveryStatut() => _deliveryStatut != null;

  // "refunded" field.
  bool? _refunded;
  bool get refunded => _refunded ?? false;
  bool hasRefunded() => _refunded != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as DocumentReference?;
    _transactionId = snapshotData['transaction_id'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _paymentMethode = snapshotData['payment_methode'] as String?;
    _productBuy = snapshotData['product_buy'] as DocumentReference?;
    _deliveryMethode = snapshotData['delivery_methode'] as String?;
    _statu = castToType<int>(snapshotData['statu']);
    _type = snapshotData['type'] as String?;
    _creatAt = snapshotData['creat_at'] as DateTime?;
    _creatAtSec = castToType<int>(snapshotData['creat_at_sec']);
    _productName = snapshotData['productName'] as String?;
    _paymentMessage = snapshotData['paymentMessage'] as String?;
    _deliveryStatut = castToType<int>(snapshotData['delivery_statut']);
    _refunded = snapshotData['refunded'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Transaction');

  static Stream<TransactionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionRecord.fromSnapshot(s));

  static Future<TransactionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionRecord.fromSnapshot(s));

  static TransactionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionRecordData({
  DocumentReference? userId,
  String? transactionId,
  double? price,
  String? paymentMethode,
  DocumentReference? productBuy,
  String? deliveryMethode,
  int? statu,
  String? type,
  DateTime? creatAt,
  int? creatAtSec,
  String? productName,
  String? paymentMessage,
  int? deliveryStatut,
  bool? refunded,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'transaction_id': transactionId,
      'price': price,
      'payment_methode': paymentMethode,
      'product_buy': productBuy,
      'delivery_methode': deliveryMethode,
      'statu': statu,
      'type': type,
      'creat_at': creatAt,
      'creat_at_sec': creatAtSec,
      'productName': productName,
      'paymentMessage': paymentMessage,
      'delivery_statut': deliveryStatut,
      'refunded': refunded,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionRecordDocumentEquality implements Equality<TransactionRecord> {
  const TransactionRecordDocumentEquality();

  @override
  bool equals(TransactionRecord? e1, TransactionRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.transactionId == e2?.transactionId &&
        e1?.price == e2?.price &&
        e1?.paymentMethode == e2?.paymentMethode &&
        e1?.productBuy == e2?.productBuy &&
        e1?.deliveryMethode == e2?.deliveryMethode &&
        e1?.statu == e2?.statu &&
        e1?.type == e2?.type &&
        e1?.creatAt == e2?.creatAt &&
        e1?.creatAtSec == e2?.creatAtSec &&
        e1?.productName == e2?.productName &&
        e1?.paymentMessage == e2?.paymentMessage &&
        e1?.deliveryStatut == e2?.deliveryStatut &&
        e1?.refunded == e2?.refunded;
  }

  @override
  int hash(TransactionRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.transactionId,
        e?.price,
        e?.paymentMethode,
        e?.productBuy,
        e?.deliveryMethode,
        e?.statu,
        e?.type,
        e?.creatAt,
        e?.creatAtSec,
        e?.productName,
        e?.paymentMessage,
        e?.deliveryStatut,
        e?.refunded
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionRecord;
}

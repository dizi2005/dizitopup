// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProduitStruct extends FFFirebaseStruct {
  ProduitStruct({
    String? productId,
    String? productName,
    double? priceUsd,
    double? priceHtg,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _productId = productId,
        _productName = productName,
        _priceUsd = priceUsd,
        _priceHtg = priceHtg,
        super(firestoreUtilData);

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  set productId(String? val) => _productId = val;

  bool hasProductId() => _productId != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;

  bool hasProductName() => _productName != null;

  // "price_usd" field.
  double? _priceUsd;
  double get priceUsd => _priceUsd ?? 0.0;
  set priceUsd(double? val) => _priceUsd = val;

  void incrementPriceUsd(double amount) => priceUsd = priceUsd + amount;

  bool hasPriceUsd() => _priceUsd != null;

  // "price_htg" field.
  double? _priceHtg;
  double get priceHtg => _priceHtg ?? 0.0;
  set priceHtg(double? val) => _priceHtg = val;

  void incrementPriceHtg(double amount) => priceHtg = priceHtg + amount;

  bool hasPriceHtg() => _priceHtg != null;

  static ProduitStruct fromMap(Map<String, dynamic> data) => ProduitStruct(
        productId: data['product_id'] as String?,
        productName: data['product_name'] as String?,
        priceUsd: castToType<double>(data['price_usd']),
        priceHtg: castToType<double>(data['price_htg']),
      );

  static ProduitStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProduitStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'product_id': _productId,
        'product_name': _productName,
        'price_usd': _priceUsd,
        'price_htg': _priceHtg,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product_id': serializeParam(
          _productId,
          ParamType.String,
        ),
        'product_name': serializeParam(
          _productName,
          ParamType.String,
        ),
        'price_usd': serializeParam(
          _priceUsd,
          ParamType.double,
        ),
        'price_htg': serializeParam(
          _priceHtg,
          ParamType.double,
        ),
      }.withoutNulls;

  static ProduitStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProduitStruct(
        productId: deserializeParam(
          data['product_id'],
          ParamType.String,
          false,
        ),
        productName: deserializeParam(
          data['product_name'],
          ParamType.String,
          false,
        ),
        priceUsd: deserializeParam(
          data['price_usd'],
          ParamType.double,
          false,
        ),
        priceHtg: deserializeParam(
          data['price_htg'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ProduitStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProduitStruct &&
        productId == other.productId &&
        productName == other.productName &&
        priceUsd == other.priceUsd &&
        priceHtg == other.priceHtg;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([productId, productName, priceUsd, priceHtg]);
}

ProduitStruct createProduitStruct({
  String? productId,
  String? productName,
  double? priceUsd,
  double? priceHtg,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProduitStruct(
      productId: productId,
      productName: productName,
      priceUsd: priceUsd,
      priceHtg: priceHtg,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProduitStruct? updateProduitStruct(
  ProduitStruct? produit, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    produit
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProduitStructData(
  Map<String, dynamic> firestoreData,
  ProduitStruct? produit,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (produit == null) {
    return;
  }
  if (produit.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && produit.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final produitData = getProduitFirestoreData(produit, forFieldValue);
  final nestedData = produitData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = produit.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProduitFirestoreData(
  ProduitStruct? produit, [
  bool forFieldValue = false,
]) {
  if (produit == null) {
    return {};
  }
  final firestoreData = mapToFirestore(produit.toMap());

  // Add any Firestore field values
  produit.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProduitListFirestoreData(
  List<ProduitStruct>? produits,
) =>
    produits?.map((e) => getProduitFirestoreData(e, true)).toList() ?? [];

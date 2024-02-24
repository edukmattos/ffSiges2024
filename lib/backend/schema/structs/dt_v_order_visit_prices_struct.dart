// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtVOrderVisitPricesStruct extends FFFirebaseStruct {
  DtVOrderVisitPricesStruct({
    int? orderVisitId,
    double? priceServices,
    double? priceMaterials,
    double? priceVehicles,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _orderVisitId = orderVisitId,
        _priceServices = priceServices,
        _priceMaterials = priceMaterials,
        _priceVehicles = priceVehicles,
        super(firestoreUtilData);

  // "orderVisitId" field.
  int? _orderVisitId;
  int get orderVisitId => _orderVisitId ?? 0;
  set orderVisitId(int? val) => _orderVisitId = val;
  void incrementOrderVisitId(int amount) =>
      _orderVisitId = orderVisitId + amount;
  bool hasOrderVisitId() => _orderVisitId != null;

  // "priceServices" field.
  double? _priceServices;
  double get priceServices => _priceServices ?? 0.0;
  set priceServices(double? val) => _priceServices = val;
  void incrementPriceServices(double amount) =>
      _priceServices = priceServices + amount;
  bool hasPriceServices() => _priceServices != null;

  // "priceMaterials" field.
  double? _priceMaterials;
  double get priceMaterials => _priceMaterials ?? 0.0;
  set priceMaterials(double? val) => _priceMaterials = val;
  void incrementPriceMaterials(double amount) =>
      _priceMaterials = priceMaterials + amount;
  bool hasPriceMaterials() => _priceMaterials != null;

  // "priceVehicles" field.
  double? _priceVehicles;
  double get priceVehicles => _priceVehicles ?? 0.0;
  set priceVehicles(double? val) => _priceVehicles = val;
  void incrementPriceVehicles(double amount) =>
      _priceVehicles = priceVehicles + amount;
  bool hasPriceVehicles() => _priceVehicles != null;

  static DtVOrderVisitPricesStruct fromMap(Map<String, dynamic> data) =>
      DtVOrderVisitPricesStruct(
        orderVisitId: castToType<int>(data['orderVisitId']),
        priceServices: castToType<double>(data['priceServices']),
        priceMaterials: castToType<double>(data['priceMaterials']),
        priceVehicles: castToType<double>(data['priceVehicles']),
      );

  static DtVOrderVisitPricesStruct? maybeFromMap(dynamic data) => data is Map
      ? DtVOrderVisitPricesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'orderVisitId': _orderVisitId,
        'priceServices': _priceServices,
        'priceMaterials': _priceMaterials,
        'priceVehicles': _priceVehicles,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'orderVisitId': serializeParam(
          _orderVisitId,
          ParamType.int,
        ),
        'priceServices': serializeParam(
          _priceServices,
          ParamType.double,
        ),
        'priceMaterials': serializeParam(
          _priceMaterials,
          ParamType.double,
        ),
        'priceVehicles': serializeParam(
          _priceVehicles,
          ParamType.double,
        ),
      }.withoutNulls;

  static DtVOrderVisitPricesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtVOrderVisitPricesStruct(
        orderVisitId: deserializeParam(
          data['orderVisitId'],
          ParamType.int,
          false,
        ),
        priceServices: deserializeParam(
          data['priceServices'],
          ParamType.double,
          false,
        ),
        priceMaterials: deserializeParam(
          data['priceMaterials'],
          ParamType.double,
          false,
        ),
        priceVehicles: deserializeParam(
          data['priceVehicles'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'DtVOrderVisitPricesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtVOrderVisitPricesStruct &&
        orderVisitId == other.orderVisitId &&
        priceServices == other.priceServices &&
        priceMaterials == other.priceMaterials &&
        priceVehicles == other.priceVehicles;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([orderVisitId, priceServices, priceMaterials, priceVehicles]);
}

DtVOrderVisitPricesStruct createDtVOrderVisitPricesStruct({
  int? orderVisitId,
  double? priceServices,
  double? priceMaterials,
  double? priceVehicles,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtVOrderVisitPricesStruct(
      orderVisitId: orderVisitId,
      priceServices: priceServices,
      priceMaterials: priceMaterials,
      priceVehicles: priceVehicles,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtVOrderVisitPricesStruct? updateDtVOrderVisitPricesStruct(
  DtVOrderVisitPricesStruct? dtVOrderVisitPrices, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtVOrderVisitPrices
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtVOrderVisitPricesStructData(
  Map<String, dynamic> firestoreData,
  DtVOrderVisitPricesStruct? dtVOrderVisitPrices,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtVOrderVisitPrices == null) {
    return;
  }
  if (dtVOrderVisitPrices.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtVOrderVisitPrices.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtVOrderVisitPricesData =
      getDtVOrderVisitPricesFirestoreData(dtVOrderVisitPrices, forFieldValue);
  final nestedData =
      dtVOrderVisitPricesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      dtVOrderVisitPrices.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtVOrderVisitPricesFirestoreData(
  DtVOrderVisitPricesStruct? dtVOrderVisitPrices, [
  bool forFieldValue = false,
]) {
  if (dtVOrderVisitPrices == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtVOrderVisitPrices.toMap());

  // Add any Firestore field values
  dtVOrderVisitPrices.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtVOrderVisitPricesListFirestoreData(
  List<DtVOrderVisitPricesStruct>? dtVOrderVisitPricess,
) =>
    dtVOrderVisitPricess
        ?.map((e) => getDtVOrderVisitPricesFirestoreData(e, true))
        .toList() ??
    [];

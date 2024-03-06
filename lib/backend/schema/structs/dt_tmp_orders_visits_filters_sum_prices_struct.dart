// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtTmpOrdersVisitsFiltersSumPricesStruct extends FFFirebaseStruct {
  DtTmpOrdersVisitsFiltersSumPricesStruct({
    double? sumPriceServices,
    double? sumPriceMaterials,
    double? sumPriceVehicles,
    double? sumPriceTotal,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _sumPriceServices = sumPriceServices,
        _sumPriceMaterials = sumPriceMaterials,
        _sumPriceVehicles = sumPriceVehicles,
        _sumPriceTotal = sumPriceTotal,
        super(firestoreUtilData);

  // "sumPriceServices" field.
  double? _sumPriceServices;
  double get sumPriceServices => _sumPriceServices ?? 0.0;
  set sumPriceServices(double? val) => _sumPriceServices = val;
  void incrementSumPriceServices(double amount) =>
      _sumPriceServices = sumPriceServices + amount;
  bool hasSumPriceServices() => _sumPriceServices != null;

  // "sumPriceMaterials" field.
  double? _sumPriceMaterials;
  double get sumPriceMaterials => _sumPriceMaterials ?? 0.0;
  set sumPriceMaterials(double? val) => _sumPriceMaterials = val;
  void incrementSumPriceMaterials(double amount) =>
      _sumPriceMaterials = sumPriceMaterials + amount;
  bool hasSumPriceMaterials() => _sumPriceMaterials != null;

  // "sumPriceVehicles" field.
  double? _sumPriceVehicles;
  double get sumPriceVehicles => _sumPriceVehicles ?? 0.0;
  set sumPriceVehicles(double? val) => _sumPriceVehicles = val;
  void incrementSumPriceVehicles(double amount) =>
      _sumPriceVehicles = sumPriceVehicles + amount;
  bool hasSumPriceVehicles() => _sumPriceVehicles != null;

  // "sumPriceTotal" field.
  double? _sumPriceTotal;
  double get sumPriceTotal => _sumPriceTotal ?? 0.0;
  set sumPriceTotal(double? val) => _sumPriceTotal = val;
  void incrementSumPriceTotal(double amount) =>
      _sumPriceTotal = sumPriceTotal + amount;
  bool hasSumPriceTotal() => _sumPriceTotal != null;

  static DtTmpOrdersVisitsFiltersSumPricesStruct fromMap(
          Map<String, dynamic> data) =>
      DtTmpOrdersVisitsFiltersSumPricesStruct(
        sumPriceServices: castToType<double>(data['sumPriceServices']),
        sumPriceMaterials: castToType<double>(data['sumPriceMaterials']),
        sumPriceVehicles: castToType<double>(data['sumPriceVehicles']),
        sumPriceTotal: castToType<double>(data['sumPriceTotal']),
      );

  static DtTmpOrdersVisitsFiltersSumPricesStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? DtTmpOrdersVisitsFiltersSumPricesStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'sumPriceServices': _sumPriceServices,
        'sumPriceMaterials': _sumPriceMaterials,
        'sumPriceVehicles': _sumPriceVehicles,
        'sumPriceTotal': _sumPriceTotal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sumPriceServices': serializeParam(
          _sumPriceServices,
          ParamType.double,
        ),
        'sumPriceMaterials': serializeParam(
          _sumPriceMaterials,
          ParamType.double,
        ),
        'sumPriceVehicles': serializeParam(
          _sumPriceVehicles,
          ParamType.double,
        ),
        'sumPriceTotal': serializeParam(
          _sumPriceTotal,
          ParamType.double,
        ),
      }.withoutNulls;

  static DtTmpOrdersVisitsFiltersSumPricesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtTmpOrdersVisitsFiltersSumPricesStruct(
        sumPriceServices: deserializeParam(
          data['sumPriceServices'],
          ParamType.double,
          false,
        ),
        sumPriceMaterials: deserializeParam(
          data['sumPriceMaterials'],
          ParamType.double,
          false,
        ),
        sumPriceVehicles: deserializeParam(
          data['sumPriceVehicles'],
          ParamType.double,
          false,
        ),
        sumPriceTotal: deserializeParam(
          data['sumPriceTotal'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'DtTmpOrdersVisitsFiltersSumPricesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtTmpOrdersVisitsFiltersSumPricesStruct &&
        sumPriceServices == other.sumPriceServices &&
        sumPriceMaterials == other.sumPriceMaterials &&
        sumPriceVehicles == other.sumPriceVehicles &&
        sumPriceTotal == other.sumPriceTotal;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [sumPriceServices, sumPriceMaterials, sumPriceVehicles, sumPriceTotal]);
}

DtTmpOrdersVisitsFiltersSumPricesStruct
    createDtTmpOrdersVisitsFiltersSumPricesStruct({
  double? sumPriceServices,
  double? sumPriceMaterials,
  double? sumPriceVehicles,
  double? sumPriceTotal,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
        DtTmpOrdersVisitsFiltersSumPricesStruct(
          sumPriceServices: sumPriceServices,
          sumPriceMaterials: sumPriceMaterials,
          sumPriceVehicles: sumPriceVehicles,
          sumPriceTotal: sumPriceTotal,
          firestoreUtilData: FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
            delete: delete,
            fieldValues: fieldValues,
          ),
        );

DtTmpOrdersVisitsFiltersSumPricesStruct?
    updateDtTmpOrdersVisitsFiltersSumPricesStruct(
  DtTmpOrdersVisitsFiltersSumPricesStruct? dtTmpOrdersVisitsFiltersSumPrices, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
        dtTmpOrdersVisitsFiltersSumPrices
          ?..firestoreUtilData = FirestoreUtilData(
            clearUnsetFields: clearUnsetFields,
            create: create,
          );

void addDtTmpOrdersVisitsFiltersSumPricesStructData(
  Map<String, dynamic> firestoreData,
  DtTmpOrdersVisitsFiltersSumPricesStruct? dtTmpOrdersVisitsFiltersSumPrices,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtTmpOrdersVisitsFiltersSumPrices == null) {
    return;
  }
  if (dtTmpOrdersVisitsFiltersSumPrices.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      dtTmpOrdersVisitsFiltersSumPrices.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtTmpOrdersVisitsFiltersSumPricesData =
      getDtTmpOrdersVisitsFiltersSumPricesFirestoreData(
          dtTmpOrdersVisitsFiltersSumPrices, forFieldValue);
  final nestedData = dtTmpOrdersVisitsFiltersSumPricesData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      dtTmpOrdersVisitsFiltersSumPrices.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtTmpOrdersVisitsFiltersSumPricesFirestoreData(
  DtTmpOrdersVisitsFiltersSumPricesStruct? dtTmpOrdersVisitsFiltersSumPrices, [
  bool forFieldValue = false,
]) {
  if (dtTmpOrdersVisitsFiltersSumPrices == null) {
    return {};
  }
  final firestoreData =
      mapToFirestore(dtTmpOrdersVisitsFiltersSumPrices.toMap());

  // Add any Firestore field values
  dtTmpOrdersVisitsFiltersSumPrices.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<
    Map<String, dynamic>> getDtTmpOrdersVisitsFiltersSumPricesListFirestoreData(
  List<DtTmpOrdersVisitsFiltersSumPricesStruct>?
      dtTmpOrdersVisitsFiltersSumPricess,
) =>
    dtTmpOrdersVisitsFiltersSumPricess
        ?.map((e) => getDtTmpOrdersVisitsFiltersSumPricesFirestoreData(e, true))
        .toList() ??
    [];

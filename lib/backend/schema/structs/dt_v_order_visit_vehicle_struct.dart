// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtVOrderVisitVehicleStruct extends FFFirebaseStruct {
  DtVOrderVisitVehicleStruct({
    int? id,
    int? orderVisitId,
    int? vehicleId,
    String? vehicleDescription,
    int? recorderStart,
    int? recorderEnd,
    String? unit,
    int? amountUnit,
    double? priceUnit,
    double? priceTotal,
    double? discount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _orderVisitId = orderVisitId,
        _vehicleId = vehicleId,
        _vehicleDescription = vehicleDescription,
        _recorderStart = recorderStart,
        _recorderEnd = recorderEnd,
        _unit = unit,
        _amountUnit = amountUnit,
        _priceUnit = priceUnit,
        _priceTotal = priceTotal,
        _discount = discount,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "orderVisitId" field.
  int? _orderVisitId;
  int get orderVisitId => _orderVisitId ?? 0;
  set orderVisitId(int? val) => _orderVisitId = val;
  void incrementOrderVisitId(int amount) =>
      _orderVisitId = orderVisitId + amount;
  bool hasOrderVisitId() => _orderVisitId != null;

  // "vehicleId" field.
  int? _vehicleId;
  int get vehicleId => _vehicleId ?? 0;
  set vehicleId(int? val) => _vehicleId = val;
  void incrementVehicleId(int amount) => _vehicleId = vehicleId + amount;
  bool hasVehicleId() => _vehicleId != null;

  // "vehicleDescription" field.
  String? _vehicleDescription;
  String get vehicleDescription => _vehicleDescription ?? '';
  set vehicleDescription(String? val) => _vehicleDescription = val;
  bool hasVehicleDescription() => _vehicleDescription != null;

  // "recorderStart" field.
  int? _recorderStart;
  int get recorderStart => _recorderStart ?? 0;
  set recorderStart(int? val) => _recorderStart = val;
  void incrementRecorderStart(int amount) =>
      _recorderStart = recorderStart + amount;
  bool hasRecorderStart() => _recorderStart != null;

  // "recorderEnd" field.
  int? _recorderEnd;
  int get recorderEnd => _recorderEnd ?? 0;
  set recorderEnd(int? val) => _recorderEnd = val;
  void incrementRecorderEnd(int amount) => _recorderEnd = recorderEnd + amount;
  bool hasRecorderEnd() => _recorderEnd != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;
  bool hasUnit() => _unit != null;

  // "amountUnit" field.
  int? _amountUnit;
  int get amountUnit => _amountUnit ?? 0;
  set amountUnit(int? val) => _amountUnit = val;
  void incrementAmountUnit(int amount) => _amountUnit = amountUnit + amount;
  bool hasAmountUnit() => _amountUnit != null;

  // "priceUnit" field.
  double? _priceUnit;
  double get priceUnit => _priceUnit ?? 0.0;
  set priceUnit(double? val) => _priceUnit = val;
  void incrementPriceUnit(double amount) => _priceUnit = priceUnit + amount;
  bool hasPriceUnit() => _priceUnit != null;

  // "priceTotal" field.
  double? _priceTotal;
  double get priceTotal => _priceTotal ?? 0.0;
  set priceTotal(double? val) => _priceTotal = val;
  void incrementPriceTotal(double amount) => _priceTotal = priceTotal + amount;
  bool hasPriceTotal() => _priceTotal != null;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  set discount(double? val) => _discount = val;
  void incrementDiscount(double amount) => _discount = discount + amount;
  bool hasDiscount() => _discount != null;

  static DtVOrderVisitVehicleStruct fromMap(Map<String, dynamic> data) =>
      DtVOrderVisitVehicleStruct(
        id: castToType<int>(data['id']),
        orderVisitId: castToType<int>(data['orderVisitId']),
        vehicleId: castToType<int>(data['vehicleId']),
        vehicleDescription: data['vehicleDescription'] as String?,
        recorderStart: castToType<int>(data['recorderStart']),
        recorderEnd: castToType<int>(data['recorderEnd']),
        unit: data['unit'] as String?,
        amountUnit: castToType<int>(data['amountUnit']),
        priceUnit: castToType<double>(data['priceUnit']),
        priceTotal: castToType<double>(data['priceTotal']),
        discount: castToType<double>(data['discount']),
      );

  static DtVOrderVisitVehicleStruct? maybeFromMap(dynamic data) => data is Map
      ? DtVOrderVisitVehicleStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'orderVisitId': _orderVisitId,
        'vehicleId': _vehicleId,
        'vehicleDescription': _vehicleDescription,
        'recorderStart': _recorderStart,
        'recorderEnd': _recorderEnd,
        'unit': _unit,
        'amountUnit': _amountUnit,
        'priceUnit': _priceUnit,
        'priceTotal': _priceTotal,
        'discount': _discount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'orderVisitId': serializeParam(
          _orderVisitId,
          ParamType.int,
        ),
        'vehicleId': serializeParam(
          _vehicleId,
          ParamType.int,
        ),
        'vehicleDescription': serializeParam(
          _vehicleDescription,
          ParamType.String,
        ),
        'recorderStart': serializeParam(
          _recorderStart,
          ParamType.int,
        ),
        'recorderEnd': serializeParam(
          _recorderEnd,
          ParamType.int,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'amountUnit': serializeParam(
          _amountUnit,
          ParamType.int,
        ),
        'priceUnit': serializeParam(
          _priceUnit,
          ParamType.double,
        ),
        'priceTotal': serializeParam(
          _priceTotal,
          ParamType.double,
        ),
        'discount': serializeParam(
          _discount,
          ParamType.double,
        ),
      }.withoutNulls;

  static DtVOrderVisitVehicleStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtVOrderVisitVehicleStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        orderVisitId: deserializeParam(
          data['orderVisitId'],
          ParamType.int,
          false,
        ),
        vehicleId: deserializeParam(
          data['vehicleId'],
          ParamType.int,
          false,
        ),
        vehicleDescription: deserializeParam(
          data['vehicleDescription'],
          ParamType.String,
          false,
        ),
        recorderStart: deserializeParam(
          data['recorderStart'],
          ParamType.int,
          false,
        ),
        recorderEnd: deserializeParam(
          data['recorderEnd'],
          ParamType.int,
          false,
        ),
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
        amountUnit: deserializeParam(
          data['amountUnit'],
          ParamType.int,
          false,
        ),
        priceUnit: deserializeParam(
          data['priceUnit'],
          ParamType.double,
          false,
        ),
        priceTotal: deserializeParam(
          data['priceTotal'],
          ParamType.double,
          false,
        ),
        discount: deserializeParam(
          data['discount'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'DtVOrderVisitVehicleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtVOrderVisitVehicleStruct &&
        id == other.id &&
        orderVisitId == other.orderVisitId &&
        vehicleId == other.vehicleId &&
        vehicleDescription == other.vehicleDescription &&
        recorderStart == other.recorderStart &&
        recorderEnd == other.recorderEnd &&
        unit == other.unit &&
        amountUnit == other.amountUnit &&
        priceUnit == other.priceUnit &&
        priceTotal == other.priceTotal &&
        discount == other.discount;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        orderVisitId,
        vehicleId,
        vehicleDescription,
        recorderStart,
        recorderEnd,
        unit,
        amountUnit,
        priceUnit,
        priceTotal,
        discount
      ]);
}

DtVOrderVisitVehicleStruct createDtVOrderVisitVehicleStruct({
  int? id,
  int? orderVisitId,
  int? vehicleId,
  String? vehicleDescription,
  int? recorderStart,
  int? recorderEnd,
  String? unit,
  int? amountUnit,
  double? priceUnit,
  double? priceTotal,
  double? discount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtVOrderVisitVehicleStruct(
      id: id,
      orderVisitId: orderVisitId,
      vehicleId: vehicleId,
      vehicleDescription: vehicleDescription,
      recorderStart: recorderStart,
      recorderEnd: recorderEnd,
      unit: unit,
      amountUnit: amountUnit,
      priceUnit: priceUnit,
      priceTotal: priceTotal,
      discount: discount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtVOrderVisitVehicleStruct? updateDtVOrderVisitVehicleStruct(
  DtVOrderVisitVehicleStruct? dtVOrderVisitVehicle, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtVOrderVisitVehicle
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtVOrderVisitVehicleStructData(
  Map<String, dynamic> firestoreData,
  DtVOrderVisitVehicleStruct? dtVOrderVisitVehicle,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtVOrderVisitVehicle == null) {
    return;
  }
  if (dtVOrderVisitVehicle.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtVOrderVisitVehicle.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtVOrderVisitVehicleData =
      getDtVOrderVisitVehicleFirestoreData(dtVOrderVisitVehicle, forFieldValue);
  final nestedData =
      dtVOrderVisitVehicleData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      dtVOrderVisitVehicle.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtVOrderVisitVehicleFirestoreData(
  DtVOrderVisitVehicleStruct? dtVOrderVisitVehicle, [
  bool forFieldValue = false,
]) {
  if (dtVOrderVisitVehicle == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtVOrderVisitVehicle.toMap());

  // Add any Firestore field values
  dtVOrderVisitVehicle.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtVOrderVisitVehicleListFirestoreData(
  List<DtVOrderVisitVehicleStruct>? dtVOrderVisitVehicles,
) =>
    dtVOrderVisitVehicles
        ?.map((e) => getDtVOrderVisitVehicleFirestoreData(e, true))
        .toList() ??
    [];

// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtVOrderVisitServicesStruct extends FFFirebaseStruct {
  DtVOrderVisitServicesStruct({
    int? id,
    int? orderVisitId,
    int? serviceId,
    String? serviceDescription,
    String? serviceUnit,
    double? priceUnit,
    double? amount,
    double? discount,
    double? total,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _orderVisitId = orderVisitId,
        _serviceId = serviceId,
        _serviceDescription = serviceDescription,
        _serviceUnit = serviceUnit,
        _priceUnit = priceUnit,
        _amount = amount,
        _discount = discount,
        _total = total,
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

  // "serviceId" field.
  int? _serviceId;
  int get serviceId => _serviceId ?? 0;
  set serviceId(int? val) => _serviceId = val;
  void incrementServiceId(int amount) => _serviceId = serviceId + amount;
  bool hasServiceId() => _serviceId != null;

  // "serviceDescription" field.
  String? _serviceDescription;
  String get serviceDescription => _serviceDescription ?? '';
  set serviceDescription(String? val) => _serviceDescription = val;
  bool hasServiceDescription() => _serviceDescription != null;

  // "serviceUnit" field.
  String? _serviceUnit;
  String get serviceUnit => _serviceUnit ?? '';
  set serviceUnit(String? val) => _serviceUnit = val;
  bool hasServiceUnit() => _serviceUnit != null;

  // "priceUnit" field.
  double? _priceUnit;
  double get priceUnit => _priceUnit ?? 0.0;
  set priceUnit(double? val) => _priceUnit = val;
  void incrementPriceUnit(double amount) => _priceUnit = priceUnit + amount;
  bool hasPriceUnit() => _priceUnit != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;
  void incrementAmount(double amount) => _amount = amount + amount;
  bool hasAmount() => _amount != null;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  set discount(double? val) => _discount = val;
  void incrementDiscount(double amount) => _discount = discount + amount;
  bool hasDiscount() => _discount != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  set total(double? val) => _total = val;
  void incrementTotal(double amount) => _total = total + amount;
  bool hasTotal() => _total != null;

  static DtVOrderVisitServicesStruct fromMap(Map<String, dynamic> data) =>
      DtVOrderVisitServicesStruct(
        id: castToType<int>(data['id']),
        orderVisitId: castToType<int>(data['orderVisitId']),
        serviceId: castToType<int>(data['serviceId']),
        serviceDescription: data['serviceDescription'] as String?,
        serviceUnit: data['serviceUnit'] as String?,
        priceUnit: castToType<double>(data['priceUnit']),
        amount: castToType<double>(data['amount']),
        discount: castToType<double>(data['discount']),
        total: castToType<double>(data['total']),
      );

  static DtVOrderVisitServicesStruct? maybeFromMap(dynamic data) => data is Map
      ? DtVOrderVisitServicesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'orderVisitId': _orderVisitId,
        'serviceId': _serviceId,
        'serviceDescription': _serviceDescription,
        'serviceUnit': _serviceUnit,
        'priceUnit': _priceUnit,
        'amount': _amount,
        'discount': _discount,
        'total': _total,
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
        'serviceId': serializeParam(
          _serviceId,
          ParamType.int,
        ),
        'serviceDescription': serializeParam(
          _serviceDescription,
          ParamType.String,
        ),
        'serviceUnit': serializeParam(
          _serviceUnit,
          ParamType.String,
        ),
        'priceUnit': serializeParam(
          _priceUnit,
          ParamType.double,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'discount': serializeParam(
          _discount,
          ParamType.double,
        ),
        'total': serializeParam(
          _total,
          ParamType.double,
        ),
      }.withoutNulls;

  static DtVOrderVisitServicesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtVOrderVisitServicesStruct(
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
        serviceId: deserializeParam(
          data['serviceId'],
          ParamType.int,
          false,
        ),
        serviceDescription: deserializeParam(
          data['serviceDescription'],
          ParamType.String,
          false,
        ),
        serviceUnit: deserializeParam(
          data['serviceUnit'],
          ParamType.String,
          false,
        ),
        priceUnit: deserializeParam(
          data['priceUnit'],
          ParamType.double,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        discount: deserializeParam(
          data['discount'],
          ParamType.double,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'DtVOrderVisitServicesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtVOrderVisitServicesStruct &&
        id == other.id &&
        orderVisitId == other.orderVisitId &&
        serviceId == other.serviceId &&
        serviceDescription == other.serviceDescription &&
        serviceUnit == other.serviceUnit &&
        priceUnit == other.priceUnit &&
        amount == other.amount &&
        discount == other.discount &&
        total == other.total;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        orderVisitId,
        serviceId,
        serviceDescription,
        serviceUnit,
        priceUnit,
        amount,
        discount,
        total
      ]);
}

DtVOrderVisitServicesStruct createDtVOrderVisitServicesStruct({
  int? id,
  int? orderVisitId,
  int? serviceId,
  String? serviceDescription,
  String? serviceUnit,
  double? priceUnit,
  double? amount,
  double? discount,
  double? total,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtVOrderVisitServicesStruct(
      id: id,
      orderVisitId: orderVisitId,
      serviceId: serviceId,
      serviceDescription: serviceDescription,
      serviceUnit: serviceUnit,
      priceUnit: priceUnit,
      amount: amount,
      discount: discount,
      total: total,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtVOrderVisitServicesStruct? updateDtVOrderVisitServicesStruct(
  DtVOrderVisitServicesStruct? dtVOrderVisitServices, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtVOrderVisitServices
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtVOrderVisitServicesStructData(
  Map<String, dynamic> firestoreData,
  DtVOrderVisitServicesStruct? dtVOrderVisitServices,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtVOrderVisitServices == null) {
    return;
  }
  if (dtVOrderVisitServices.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      dtVOrderVisitServices.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtVOrderVisitServicesData = getDtVOrderVisitServicesFirestoreData(
      dtVOrderVisitServices, forFieldValue);
  final nestedData =
      dtVOrderVisitServicesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      dtVOrderVisitServices.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtVOrderVisitServicesFirestoreData(
  DtVOrderVisitServicesStruct? dtVOrderVisitServices, [
  bool forFieldValue = false,
]) {
  if (dtVOrderVisitServices == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtVOrderVisitServices.toMap());

  // Add any Firestore field values
  dtVOrderVisitServices.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtVOrderVisitServicesListFirestoreData(
  List<DtVOrderVisitServicesStruct>? dtVOrderVisitServicess,
) =>
    dtVOrderVisitServicess
        ?.map((e) => getDtVOrderVisitServicesFirestoreData(e, true))
        .toList() ??
    [];

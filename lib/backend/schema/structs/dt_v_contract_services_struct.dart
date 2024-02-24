// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtVContractServicesStruct extends FFFirebaseStruct {
  DtVContractServicesStruct({
    int? contractId,
    int? serviceId,
    String? serviceDescription,
    String? serviceUnit,
    double? servicePriceUnit,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _contractId = contractId,
        _serviceId = serviceId,
        _serviceDescription = serviceDescription,
        _serviceUnit = serviceUnit,
        _servicePriceUnit = servicePriceUnit,
        super(firestoreUtilData);

  // "contractId" field.
  int? _contractId;
  int get contractId => _contractId ?? 0;
  set contractId(int? val) => _contractId = val;
  void incrementContractId(int amount) => _contractId = contractId + amount;
  bool hasContractId() => _contractId != null;

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

  // "servicePriceUnit" field.
  double? _servicePriceUnit;
  double get servicePriceUnit => _servicePriceUnit ?? 0.0;
  set servicePriceUnit(double? val) => _servicePriceUnit = val;
  void incrementServicePriceUnit(double amount) =>
      _servicePriceUnit = servicePriceUnit + amount;
  bool hasServicePriceUnit() => _servicePriceUnit != null;

  static DtVContractServicesStruct fromMap(Map<String, dynamic> data) =>
      DtVContractServicesStruct(
        contractId: castToType<int>(data['contractId']),
        serviceId: castToType<int>(data['serviceId']),
        serviceDescription: data['serviceDescription'] as String?,
        serviceUnit: data['serviceUnit'] as String?,
        servicePriceUnit: castToType<double>(data['servicePriceUnit']),
      );

  static DtVContractServicesStruct? maybeFromMap(dynamic data) => data is Map
      ? DtVContractServicesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'contractId': _contractId,
        'serviceId': _serviceId,
        'serviceDescription': _serviceDescription,
        'serviceUnit': _serviceUnit,
        'servicePriceUnit': _servicePriceUnit,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'contractId': serializeParam(
          _contractId,
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
        'servicePriceUnit': serializeParam(
          _servicePriceUnit,
          ParamType.double,
        ),
      }.withoutNulls;

  static DtVContractServicesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtVContractServicesStruct(
        contractId: deserializeParam(
          data['contractId'],
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
        servicePriceUnit: deserializeParam(
          data['servicePriceUnit'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'DtVContractServicesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtVContractServicesStruct &&
        contractId == other.contractId &&
        serviceId == other.serviceId &&
        serviceDescription == other.serviceDescription &&
        serviceUnit == other.serviceUnit &&
        servicePriceUnit == other.servicePriceUnit;
  }

  @override
  int get hashCode => const ListEquality().hash([
        contractId,
        serviceId,
        serviceDescription,
        serviceUnit,
        servicePriceUnit
      ]);
}

DtVContractServicesStruct createDtVContractServicesStruct({
  int? contractId,
  int? serviceId,
  String? serviceDescription,
  String? serviceUnit,
  double? servicePriceUnit,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtVContractServicesStruct(
      contractId: contractId,
      serviceId: serviceId,
      serviceDescription: serviceDescription,
      serviceUnit: serviceUnit,
      servicePriceUnit: servicePriceUnit,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtVContractServicesStruct? updateDtVContractServicesStruct(
  DtVContractServicesStruct? dtVContractServices, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtVContractServices
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtVContractServicesStructData(
  Map<String, dynamic> firestoreData,
  DtVContractServicesStruct? dtVContractServices,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtVContractServices == null) {
    return;
  }
  if (dtVContractServices.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtVContractServices.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtVContractServicesData =
      getDtVContractServicesFirestoreData(dtVContractServices, forFieldValue);
  final nestedData =
      dtVContractServicesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      dtVContractServices.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtVContractServicesFirestoreData(
  DtVContractServicesStruct? dtVContractServices, [
  bool forFieldValue = false,
]) {
  if (dtVContractServices == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtVContractServices.toMap());

  // Add any Firestore field values
  dtVContractServices.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtVContractServicesListFirestoreData(
  List<DtVContractServicesStruct>? dtVContractServicess,
) =>
    dtVContractServicess
        ?.map((e) => getDtVContractServicesFirestoreData(e, true))
        .toList() ??
    [];

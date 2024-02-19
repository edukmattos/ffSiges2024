// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtVContractStruct extends FFFirebaseStruct {
  DtVContractStruct({
    int? id,
    String? description,
    int? clientCompanyId,
    int? clientDepartmentId,
    int? providerCompanyId,
    int? providerDepartmentId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _description = description,
        _clientCompanyId = clientCompanyId,
        _clientDepartmentId = clientDepartmentId,
        _providerCompanyId = providerCompanyId,
        _providerDepartmentId = providerDepartmentId,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "clientCompanyId" field.
  int? _clientCompanyId;
  int get clientCompanyId => _clientCompanyId ?? 0;
  set clientCompanyId(int? val) => _clientCompanyId = val;
  void incrementClientCompanyId(int amount) =>
      _clientCompanyId = clientCompanyId + amount;
  bool hasClientCompanyId() => _clientCompanyId != null;

  // "clientDepartmentId" field.
  int? _clientDepartmentId;
  int get clientDepartmentId => _clientDepartmentId ?? 0;
  set clientDepartmentId(int? val) => _clientDepartmentId = val;
  void incrementClientDepartmentId(int amount) =>
      _clientDepartmentId = clientDepartmentId + amount;
  bool hasClientDepartmentId() => _clientDepartmentId != null;

  // "providerCompanyId" field.
  int? _providerCompanyId;
  int get providerCompanyId => _providerCompanyId ?? 0;
  set providerCompanyId(int? val) => _providerCompanyId = val;
  void incrementProviderCompanyId(int amount) =>
      _providerCompanyId = providerCompanyId + amount;
  bool hasProviderCompanyId() => _providerCompanyId != null;

  // "providerDepartmentId" field.
  int? _providerDepartmentId;
  int get providerDepartmentId => _providerDepartmentId ?? 0;
  set providerDepartmentId(int? val) => _providerDepartmentId = val;
  void incrementProviderDepartmentId(int amount) =>
      _providerDepartmentId = providerDepartmentId + amount;
  bool hasProviderDepartmentId() => _providerDepartmentId != null;

  static DtVContractStruct fromMap(Map<String, dynamic> data) =>
      DtVContractStruct(
        id: castToType<int>(data['id']),
        description: data['description'] as String?,
        clientCompanyId: castToType<int>(data['clientCompanyId']),
        clientDepartmentId: castToType<int>(data['clientDepartmentId']),
        providerCompanyId: castToType<int>(data['providerCompanyId']),
        providerDepartmentId: castToType<int>(data['providerDepartmentId']),
      );

  static DtVContractStruct? maybeFromMap(dynamic data) => data is Map
      ? DtVContractStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'description': _description,
        'clientCompanyId': _clientCompanyId,
        'clientDepartmentId': _clientDepartmentId,
        'providerCompanyId': _providerCompanyId,
        'providerDepartmentId': _providerDepartmentId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'clientCompanyId': serializeParam(
          _clientCompanyId,
          ParamType.int,
        ),
        'clientDepartmentId': serializeParam(
          _clientDepartmentId,
          ParamType.int,
        ),
        'providerCompanyId': serializeParam(
          _providerCompanyId,
          ParamType.int,
        ),
        'providerDepartmentId': serializeParam(
          _providerDepartmentId,
          ParamType.int,
        ),
      }.withoutNulls;

  static DtVContractStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtVContractStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        clientCompanyId: deserializeParam(
          data['clientCompanyId'],
          ParamType.int,
          false,
        ),
        clientDepartmentId: deserializeParam(
          data['clientDepartmentId'],
          ParamType.int,
          false,
        ),
        providerCompanyId: deserializeParam(
          data['providerCompanyId'],
          ParamType.int,
          false,
        ),
        providerDepartmentId: deserializeParam(
          data['providerDepartmentId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DtVContractStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtVContractStruct &&
        id == other.id &&
        description == other.description &&
        clientCompanyId == other.clientCompanyId &&
        clientDepartmentId == other.clientDepartmentId &&
        providerCompanyId == other.providerCompanyId &&
        providerDepartmentId == other.providerDepartmentId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        description,
        clientCompanyId,
        clientDepartmentId,
        providerCompanyId,
        providerDepartmentId
      ]);
}

DtVContractStruct createDtVContractStruct({
  int? id,
  String? description,
  int? clientCompanyId,
  int? clientDepartmentId,
  int? providerCompanyId,
  int? providerDepartmentId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtVContractStruct(
      id: id,
      description: description,
      clientCompanyId: clientCompanyId,
      clientDepartmentId: clientDepartmentId,
      providerCompanyId: providerCompanyId,
      providerDepartmentId: providerDepartmentId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtVContractStruct? updateDtVContractStruct(
  DtVContractStruct? dtVContract, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtVContract
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtVContractStructData(
  Map<String, dynamic> firestoreData,
  DtVContractStruct? dtVContract,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtVContract == null) {
    return;
  }
  if (dtVContract.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtVContract.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtVContractData =
      getDtVContractFirestoreData(dtVContract, forFieldValue);
  final nestedData =
      dtVContractData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dtVContract.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtVContractFirestoreData(
  DtVContractStruct? dtVContract, [
  bool forFieldValue = false,
]) {
  if (dtVContract == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtVContract.toMap());

  // Add any Firestore field values
  dtVContract.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtVContractListFirestoreData(
  List<DtVContractStruct>? dtVContracts,
) =>
    dtVContracts?.map((e) => getDtVContractFirestoreData(e, true)).toList() ??
    [];

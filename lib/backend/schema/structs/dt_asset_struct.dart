// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtAssetStruct extends FFFirebaseStruct {
  DtAssetStruct({
    int? id,
    String? code,
    String? description,
    int? unitId,
    String? unitDescription,
    int? tagId,
    String? tagDescription,
    String? tagSubDescription,
    int? tagSubId,
    int? statusId,
    String? statusDescription,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _code = code,
        _description = description,
        _unitId = unitId,
        _unitDescription = unitDescription,
        _tagId = tagId,
        _tagDescription = tagDescription,
        _tagSubDescription = tagSubDescription,
        _tagSubId = tagSubId,
        _statusId = statusId,
        _statusDescription = statusDescription,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;
  bool hasCode() => _code != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "unitId" field.
  int? _unitId;
  int get unitId => _unitId ?? 0;
  set unitId(int? val) => _unitId = val;
  void incrementUnitId(int amount) => _unitId = unitId + amount;
  bool hasUnitId() => _unitId != null;

  // "unitDescription" field.
  String? _unitDescription;
  String get unitDescription => _unitDescription ?? '';
  set unitDescription(String? val) => _unitDescription = val;
  bool hasUnitDescription() => _unitDescription != null;

  // "tagId" field.
  int? _tagId;
  int get tagId => _tagId ?? 0;
  set tagId(int? val) => _tagId = val;
  void incrementTagId(int amount) => _tagId = tagId + amount;
  bool hasTagId() => _tagId != null;

  // "tagDescription" field.
  String? _tagDescription;
  String get tagDescription => _tagDescription ?? '';
  set tagDescription(String? val) => _tagDescription = val;
  bool hasTagDescription() => _tagDescription != null;

  // "tagSubDescription" field.
  String? _tagSubDescription;
  String get tagSubDescription => _tagSubDescription ?? '';
  set tagSubDescription(String? val) => _tagSubDescription = val;
  bool hasTagSubDescription() => _tagSubDescription != null;

  // "tagSubId" field.
  int? _tagSubId;
  int get tagSubId => _tagSubId ?? 0;
  set tagSubId(int? val) => _tagSubId = val;
  void incrementTagSubId(int amount) => _tagSubId = tagSubId + amount;
  bool hasTagSubId() => _tagSubId != null;

  // "statusId" field.
  int? _statusId;
  int get statusId => _statusId ?? 0;
  set statusId(int? val) => _statusId = val;
  void incrementStatusId(int amount) => _statusId = statusId + amount;
  bool hasStatusId() => _statusId != null;

  // "statusDescription" field.
  String? _statusDescription;
  String get statusDescription => _statusDescription ?? '';
  set statusDescription(String? val) => _statusDescription = val;
  bool hasStatusDescription() => _statusDescription != null;

  static DtAssetStruct fromMap(Map<String, dynamic> data) => DtAssetStruct(
        id: castToType<int>(data['id']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        unitId: castToType<int>(data['unitId']),
        unitDescription: data['unitDescription'] as String?,
        tagId: castToType<int>(data['tagId']),
        tagDescription: data['tagDescription'] as String?,
        tagSubDescription: data['tagSubDescription'] as String?,
        tagSubId: castToType<int>(data['tagSubId']),
        statusId: castToType<int>(data['statusId']),
        statusDescription: data['statusDescription'] as String?,
      );

  static DtAssetStruct? maybeFromMap(dynamic data) =>
      data is Map ? DtAssetStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'code': _code,
        'description': _description,
        'unitId': _unitId,
        'unitDescription': _unitDescription,
        'tagId': _tagId,
        'tagDescription': _tagDescription,
        'tagSubDescription': _tagSubDescription,
        'tagSubId': _tagSubId,
        'statusId': _statusId,
        'statusDescription': _statusDescription,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'unitId': serializeParam(
          _unitId,
          ParamType.int,
        ),
        'unitDescription': serializeParam(
          _unitDescription,
          ParamType.String,
        ),
        'tagId': serializeParam(
          _tagId,
          ParamType.int,
        ),
        'tagDescription': serializeParam(
          _tagDescription,
          ParamType.String,
        ),
        'tagSubDescription': serializeParam(
          _tagSubDescription,
          ParamType.String,
        ),
        'tagSubId': serializeParam(
          _tagSubId,
          ParamType.int,
        ),
        'statusId': serializeParam(
          _statusId,
          ParamType.int,
        ),
        'statusDescription': serializeParam(
          _statusDescription,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtAssetStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtAssetStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        unitId: deserializeParam(
          data['unitId'],
          ParamType.int,
          false,
        ),
        unitDescription: deserializeParam(
          data['unitDescription'],
          ParamType.String,
          false,
        ),
        tagId: deserializeParam(
          data['tagId'],
          ParamType.int,
          false,
        ),
        tagDescription: deserializeParam(
          data['tagDescription'],
          ParamType.String,
          false,
        ),
        tagSubDescription: deserializeParam(
          data['tagSubDescription'],
          ParamType.String,
          false,
        ),
        tagSubId: deserializeParam(
          data['tagSubId'],
          ParamType.int,
          false,
        ),
        statusId: deserializeParam(
          data['statusId'],
          ParamType.int,
          false,
        ),
        statusDescription: deserializeParam(
          data['statusDescription'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtAssetStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtAssetStruct &&
        id == other.id &&
        code == other.code &&
        description == other.description &&
        unitId == other.unitId &&
        unitDescription == other.unitDescription &&
        tagId == other.tagId &&
        tagDescription == other.tagDescription &&
        tagSubDescription == other.tagSubDescription &&
        tagSubId == other.tagSubId &&
        statusId == other.statusId &&
        statusDescription == other.statusDescription;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        code,
        description,
        unitId,
        unitDescription,
        tagId,
        tagDescription,
        tagSubDescription,
        tagSubId,
        statusId,
        statusDescription
      ]);
}

DtAssetStruct createDtAssetStruct({
  int? id,
  String? code,
  String? description,
  int? unitId,
  String? unitDescription,
  int? tagId,
  String? tagDescription,
  String? tagSubDescription,
  int? tagSubId,
  int? statusId,
  String? statusDescription,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtAssetStruct(
      id: id,
      code: code,
      description: description,
      unitId: unitId,
      unitDescription: unitDescription,
      tagId: tagId,
      tagDescription: tagDescription,
      tagSubDescription: tagSubDescription,
      tagSubId: tagSubId,
      statusId: statusId,
      statusDescription: statusDescription,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtAssetStruct? updateDtAssetStruct(
  DtAssetStruct? dtAsset, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtAsset
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtAssetStructData(
  Map<String, dynamic> firestoreData,
  DtAssetStruct? dtAsset,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtAsset == null) {
    return;
  }
  if (dtAsset.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtAsset.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtAssetData = getDtAssetFirestoreData(dtAsset, forFieldValue);
  final nestedData = dtAssetData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dtAsset.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtAssetFirestoreData(
  DtAssetStruct? dtAsset, [
  bool forFieldValue = false,
]) {
  if (dtAsset == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtAsset.toMap());

  // Add any Firestore field values
  dtAsset.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtAssetListFirestoreData(
  List<DtAssetStruct>? dtAssets,
) =>
    dtAssets?.map((e) => getDtAssetFirestoreData(e, true)).toList() ?? [];

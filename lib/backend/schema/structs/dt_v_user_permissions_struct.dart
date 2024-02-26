// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtVUserPermissionsStruct extends FFFirebaseStruct {
  DtVUserPermissionsStruct({
    int? appPageId,
    bool? isPermission,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _appPageId = appPageId,
        _isPermission = isPermission,
        super(firestoreUtilData);

  // "appPageId" field.
  int? _appPageId;
  int get appPageId => _appPageId ?? 0;
  set appPageId(int? val) => _appPageId = val;
  void incrementAppPageId(int amount) => _appPageId = appPageId + amount;
  bool hasAppPageId() => _appPageId != null;

  // "isPermission" field.
  bool? _isPermission;
  bool get isPermission => _isPermission ?? false;
  set isPermission(bool? val) => _isPermission = val;
  bool hasIsPermission() => _isPermission != null;

  static DtVUserPermissionsStruct fromMap(Map<String, dynamic> data) =>
      DtVUserPermissionsStruct(
        appPageId: castToType<int>(data['appPageId']),
        isPermission: data['isPermission'] as bool?,
      );

  static DtVUserPermissionsStruct? maybeFromMap(dynamic data) => data is Map
      ? DtVUserPermissionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'appPageId': _appPageId,
        'isPermission': _isPermission,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'appPageId': serializeParam(
          _appPageId,
          ParamType.int,
        ),
        'isPermission': serializeParam(
          _isPermission,
          ParamType.bool,
        ),
      }.withoutNulls;

  static DtVUserPermissionsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtVUserPermissionsStruct(
        appPageId: deserializeParam(
          data['appPageId'],
          ParamType.int,
          false,
        ),
        isPermission: deserializeParam(
          data['isPermission'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'DtVUserPermissionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtVUserPermissionsStruct &&
        appPageId == other.appPageId &&
        isPermission == other.isPermission;
  }

  @override
  int get hashCode => const ListEquality().hash([appPageId, isPermission]);
}

DtVUserPermissionsStruct createDtVUserPermissionsStruct({
  int? appPageId,
  bool? isPermission,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtVUserPermissionsStruct(
      appPageId: appPageId,
      isPermission: isPermission,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtVUserPermissionsStruct? updateDtVUserPermissionsStruct(
  DtVUserPermissionsStruct? dtVUserPermissions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtVUserPermissions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtVUserPermissionsStructData(
  Map<String, dynamic> firestoreData,
  DtVUserPermissionsStruct? dtVUserPermissions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtVUserPermissions == null) {
    return;
  }
  if (dtVUserPermissions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtVUserPermissions.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtVUserPermissionsData =
      getDtVUserPermissionsFirestoreData(dtVUserPermissions, forFieldValue);
  final nestedData =
      dtVUserPermissionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      dtVUserPermissions.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtVUserPermissionsFirestoreData(
  DtVUserPermissionsStruct? dtVUserPermissions, [
  bool forFieldValue = false,
]) {
  if (dtVUserPermissions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtVUserPermissions.toMap());

  // Add any Firestore field values
  dtVUserPermissions.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtVUserPermissionsListFirestoreData(
  List<DtVUserPermissionsStruct>? dtVUserPermissionss,
) =>
    dtVUserPermissionss
        ?.map((e) => getDtVUserPermissionsFirestoreData(e, true))
        .toList() ??
    [];

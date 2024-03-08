// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtUserPermissionStruct extends FFFirebaseStruct {
  DtUserPermissionStruct({
    int? appPageId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _appPageId = appPageId,
        super(firestoreUtilData);

  // "appPageId" field.
  int? _appPageId;
  int get appPageId => _appPageId ?? 0;
  set appPageId(int? val) => _appPageId = val;
  void incrementAppPageId(int amount) => _appPageId = appPageId + amount;
  bool hasAppPageId() => _appPageId != null;

  static DtUserPermissionStruct fromMap(Map<String, dynamic> data) =>
      DtUserPermissionStruct(
        appPageId: castToType<int>(data['appPageId']),
      );

  static DtUserPermissionStruct? maybeFromMap(dynamic data) => data is Map
      ? DtUserPermissionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'appPageId': _appPageId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'appPageId': serializeParam(
          _appPageId,
          ParamType.int,
        ),
      }.withoutNulls;

  static DtUserPermissionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtUserPermissionStruct(
        appPageId: deserializeParam(
          data['appPageId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DtUserPermissionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtUserPermissionStruct && appPageId == other.appPageId;
  }

  @override
  int get hashCode => const ListEquality().hash([appPageId]);
}

DtUserPermissionStruct createDtUserPermissionStruct({
  int? appPageId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtUserPermissionStruct(
      appPageId: appPageId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtUserPermissionStruct? updateDtUserPermissionStruct(
  DtUserPermissionStruct? dtUserPermission, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtUserPermission
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtUserPermissionStructData(
  Map<String, dynamic> firestoreData,
  DtUserPermissionStruct? dtUserPermission,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtUserPermission == null) {
    return;
  }
  if (dtUserPermission.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtUserPermission.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtUserPermissionData =
      getDtUserPermissionFirestoreData(dtUserPermission, forFieldValue);
  final nestedData =
      dtUserPermissionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dtUserPermission.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtUserPermissionFirestoreData(
  DtUserPermissionStruct? dtUserPermission, [
  bool forFieldValue = false,
]) {
  if (dtUserPermission == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtUserPermission.toMap());

  // Add any Firestore field values
  dtUserPermission.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtUserPermissionListFirestoreData(
  List<DtUserPermissionStruct>? dtUserPermissions,
) =>
    dtUserPermissions
        ?.map((e) => getDtUserPermissionFirestoreData(e, true))
        .toList() ??
    [];

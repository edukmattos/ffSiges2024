// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderVisitOpenTeamUsersStruct extends FFFirebaseStruct {
  DtOrderVisitOpenTeamUsersStruct({
    int? id,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  static DtOrderVisitOpenTeamUsersStruct fromMap(Map<String, dynamic> data) =>
      DtOrderVisitOpenTeamUsersStruct(
        id: castToType<int>(data['id']),
      );

  static DtOrderVisitOpenTeamUsersStruct? maybeFromMap(dynamic data) => data
          is Map
      ? DtOrderVisitOpenTeamUsersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static DtOrderVisitOpenTeamUsersStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtOrderVisitOpenTeamUsersStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DtOrderVisitOpenTeamUsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderVisitOpenTeamUsersStruct && id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([id]);
}

DtOrderVisitOpenTeamUsersStruct createDtOrderVisitOpenTeamUsersStruct({
  int? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtOrderVisitOpenTeamUsersStruct(
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtOrderVisitOpenTeamUsersStruct? updateDtOrderVisitOpenTeamUsersStruct(
  DtOrderVisitOpenTeamUsersStruct? dtOrderVisitOpenTeamUsers, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtOrderVisitOpenTeamUsers
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtOrderVisitOpenTeamUsersStructData(
  Map<String, dynamic> firestoreData,
  DtOrderVisitOpenTeamUsersStruct? dtOrderVisitOpenTeamUsers,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtOrderVisitOpenTeamUsers == null) {
    return;
  }
  if (dtOrderVisitOpenTeamUsers.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      dtOrderVisitOpenTeamUsers.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtOrderVisitOpenTeamUsersData =
      getDtOrderVisitOpenTeamUsersFirestoreData(
          dtOrderVisitOpenTeamUsers, forFieldValue);
  final nestedData =
      dtOrderVisitOpenTeamUsersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      dtOrderVisitOpenTeamUsers.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtOrderVisitOpenTeamUsersFirestoreData(
  DtOrderVisitOpenTeamUsersStruct? dtOrderVisitOpenTeamUsers, [
  bool forFieldValue = false,
]) {
  if (dtOrderVisitOpenTeamUsers == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtOrderVisitOpenTeamUsers.toMap());

  // Add any Firestore field values
  dtOrderVisitOpenTeamUsers.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtOrderVisitOpenTeamUsersListFirestoreData(
  List<DtOrderVisitOpenTeamUsersStruct>? dtOrderVisitOpenTeamUserss,
) =>
    dtOrderVisitOpenTeamUserss
        ?.map((e) => getDtOrderVisitOpenTeamUsersFirestoreData(e, true))
        .toList() ??
    [];

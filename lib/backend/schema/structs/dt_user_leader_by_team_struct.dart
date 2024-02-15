// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtUserLeaderByTeamStruct extends FFFirebaseStruct {
  DtUserLeaderByTeamStruct({
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

  static DtUserLeaderByTeamStruct fromMap(Map<String, dynamic> data) =>
      DtUserLeaderByTeamStruct(
        id: castToType<int>(data['id']),
      );

  static DtUserLeaderByTeamStruct? maybeFromMap(dynamic data) => data is Map
      ? DtUserLeaderByTeamStruct.fromMap(data.cast<String, dynamic>())
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

  static DtUserLeaderByTeamStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtUserLeaderByTeamStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DtUserLeaderByTeamStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtUserLeaderByTeamStruct && id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([id]);
}

DtUserLeaderByTeamStruct createDtUserLeaderByTeamStruct({
  int? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtUserLeaderByTeamStruct(
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtUserLeaderByTeamStruct? updateDtUserLeaderByTeamStruct(
  DtUserLeaderByTeamStruct? dtUserLeaderByTeam, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtUserLeaderByTeam
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtUserLeaderByTeamStructData(
  Map<String, dynamic> firestoreData,
  DtUserLeaderByTeamStruct? dtUserLeaderByTeam,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtUserLeaderByTeam == null) {
    return;
  }
  if (dtUserLeaderByTeam.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtUserLeaderByTeam.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtUserLeaderByTeamData =
      getDtUserLeaderByTeamFirestoreData(dtUserLeaderByTeam, forFieldValue);
  final nestedData =
      dtUserLeaderByTeamData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      dtUserLeaderByTeam.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtUserLeaderByTeamFirestoreData(
  DtUserLeaderByTeamStruct? dtUserLeaderByTeam, [
  bool forFieldValue = false,
]) {
  if (dtUserLeaderByTeam == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtUserLeaderByTeam.toMap());

  // Add any Firestore field values
  dtUserLeaderByTeam.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtUserLeaderByTeamListFirestoreData(
  List<DtUserLeaderByTeamStruct>? dtUserLeaderByTeams,
) =>
    dtUserLeaderByTeams
        ?.map((e) => getDtUserLeaderByTeamFirestoreData(e, true))
        .toList() ??
    [];

// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderVisitStruct extends FFFirebaseStruct {
  DtOrderVisitStruct({
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

  static DtOrderVisitStruct fromMap(Map<String, dynamic> data) =>
      DtOrderVisitStruct(
        id: castToType<int>(data['id']),
      );

  static DtOrderVisitStruct? maybeFromMap(dynamic data) => data is Map
      ? DtOrderVisitStruct.fromMap(data.cast<String, dynamic>())
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

  static DtOrderVisitStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtOrderVisitStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DtOrderVisitStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderVisitStruct && id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([id]);
}

DtOrderVisitStruct createDtOrderVisitStruct({
  int? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtOrderVisitStruct(
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtOrderVisitStruct? updateDtOrderVisitStruct(
  DtOrderVisitStruct? dtOrderVisit, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtOrderVisit
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtOrderVisitStructData(
  Map<String, dynamic> firestoreData,
  DtOrderVisitStruct? dtOrderVisit,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtOrderVisit == null) {
    return;
  }
  if (dtOrderVisit.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtOrderVisit.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtOrderVisitData =
      getDtOrderVisitFirestoreData(dtOrderVisit, forFieldValue);
  final nestedData =
      dtOrderVisitData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dtOrderVisit.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtOrderVisitFirestoreData(
  DtOrderVisitStruct? dtOrderVisit, [
  bool forFieldValue = false,
]) {
  if (dtOrderVisit == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtOrderVisit.toMap());

  // Add any Firestore field values
  dtOrderVisit.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtOrderVisitListFirestoreData(
  List<DtOrderVisitStruct>? dtOrderVisits,
) =>
    dtOrderVisits?.map((e) => getDtOrderVisitFirestoreData(e, true)).toList() ??
    [];

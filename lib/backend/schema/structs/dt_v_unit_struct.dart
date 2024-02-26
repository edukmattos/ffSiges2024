// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtVUnitStruct extends FFFirebaseStruct {
  DtVUnitStruct({
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

  static DtVUnitStruct fromMap(Map<String, dynamic> data) => DtVUnitStruct(
        id: castToType<int>(data['id']),
      );

  static DtVUnitStruct? maybeFromMap(dynamic data) =>
      data is Map ? DtVUnitStruct.fromMap(data.cast<String, dynamic>()) : null;

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

  static DtVUnitStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtVUnitStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DtVUnitStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtVUnitStruct && id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([id]);
}

DtVUnitStruct createDtVUnitStruct({
  int? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtVUnitStruct(
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtVUnitStruct? updateDtVUnitStruct(
  DtVUnitStruct? dtVUnit, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtVUnit
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtVUnitStructData(
  Map<String, dynamic> firestoreData,
  DtVUnitStruct? dtVUnit,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtVUnit == null) {
    return;
  }
  if (dtVUnit.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtVUnit.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtVUnitData = getDtVUnitFirestoreData(dtVUnit, forFieldValue);
  final nestedData = dtVUnitData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dtVUnit.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtVUnitFirestoreData(
  DtVUnitStruct? dtVUnit, [
  bool forFieldValue = false,
]) {
  if (dtVUnit == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtVUnit.toMap());

  // Add any Firestore field values
  dtVUnit.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtVUnitListFirestoreData(
  List<DtVUnitStruct>? dtVUnits,
) =>
    dtVUnits?.map((e) => getDtVUnitFirestoreData(e, true)).toList() ?? [];

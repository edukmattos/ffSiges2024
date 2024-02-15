// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApiDtUsersByVisitIdStruct extends FFFirebaseStruct {
  ApiDtUsersByVisitIdStruct({
    int? userId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _userId = userId,
        super(firestoreUtilData);

  // "userId" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;
  void incrementUserId(int amount) => _userId = userId + amount;
  bool hasUserId() => _userId != null;

  static ApiDtUsersByVisitIdStruct fromMap(Map<String, dynamic> data) =>
      ApiDtUsersByVisitIdStruct(
        userId: castToType<int>(data['userId']),
      );

  static ApiDtUsersByVisitIdStruct? maybeFromMap(dynamic data) => data is Map
      ? ApiDtUsersByVisitIdStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'userId': _userId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userId': serializeParam(
          _userId,
          ParamType.int,
        ),
      }.withoutNulls;

  static ApiDtUsersByVisitIdStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ApiDtUsersByVisitIdStruct(
        userId: deserializeParam(
          data['userId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ApiDtUsersByVisitIdStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ApiDtUsersByVisitIdStruct && userId == other.userId;
  }

  @override
  int get hashCode => const ListEquality().hash([userId]);
}

ApiDtUsersByVisitIdStruct createApiDtUsersByVisitIdStruct({
  int? userId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ApiDtUsersByVisitIdStruct(
      userId: userId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ApiDtUsersByVisitIdStruct? updateApiDtUsersByVisitIdStruct(
  ApiDtUsersByVisitIdStruct? apiDtUsersByVisitId, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    apiDtUsersByVisitId
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addApiDtUsersByVisitIdStructData(
  Map<String, dynamic> firestoreData,
  ApiDtUsersByVisitIdStruct? apiDtUsersByVisitId,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (apiDtUsersByVisitId == null) {
    return;
  }
  if (apiDtUsersByVisitId.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && apiDtUsersByVisitId.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final apiDtUsersByVisitIdData =
      getApiDtUsersByVisitIdFirestoreData(apiDtUsersByVisitId, forFieldValue);
  final nestedData =
      apiDtUsersByVisitIdData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      apiDtUsersByVisitId.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getApiDtUsersByVisitIdFirestoreData(
  ApiDtUsersByVisitIdStruct? apiDtUsersByVisitId, [
  bool forFieldValue = false,
]) {
  if (apiDtUsersByVisitId == null) {
    return {};
  }
  final firestoreData = mapToFirestore(apiDtUsersByVisitId.toMap());

  // Add any Firestore field values
  apiDtUsersByVisitId.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getApiDtUsersByVisitIdListFirestoreData(
  List<ApiDtUsersByVisitIdStruct>? apiDtUsersByVisitIds,
) =>
    apiDtUsersByVisitIds
        ?.map((e) => getApiDtUsersByVisitIdFirestoreData(e, true))
        .toList() ??
    [];

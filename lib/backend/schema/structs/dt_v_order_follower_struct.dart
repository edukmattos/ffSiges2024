// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtVOrderFollowerStruct extends FFFirebaseStruct {
  DtVOrderFollowerStruct({
    int? id,
    int? orderId,
    int? userId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _orderId = orderId,
        _userId = userId,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "orderId" field.
  int? _orderId;
  int get orderId => _orderId ?? 0;
  set orderId(int? val) => _orderId = val;
  void incrementOrderId(int amount) => _orderId = orderId + amount;
  bool hasOrderId() => _orderId != null;

  // "userId" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;
  void incrementUserId(int amount) => _userId = userId + amount;
  bool hasUserId() => _userId != null;

  static DtVOrderFollowerStruct fromMap(Map<String, dynamic> data) =>
      DtVOrderFollowerStruct(
        id: castToType<int>(data['id']),
        orderId: castToType<int>(data['orderId']),
        userId: castToType<int>(data['userId']),
      );

  static DtVOrderFollowerStruct? maybeFromMap(dynamic data) => data is Map
      ? DtVOrderFollowerStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'orderId': _orderId,
        'userId': _userId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'orderId': serializeParam(
          _orderId,
          ParamType.int,
        ),
        'userId': serializeParam(
          _userId,
          ParamType.int,
        ),
      }.withoutNulls;

  static DtVOrderFollowerStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtVOrderFollowerStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        orderId: deserializeParam(
          data['orderId'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['userId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DtVOrderFollowerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtVOrderFollowerStruct &&
        id == other.id &&
        orderId == other.orderId &&
        userId == other.userId;
  }

  @override
  int get hashCode => const ListEquality().hash([id, orderId, userId]);
}

DtVOrderFollowerStruct createDtVOrderFollowerStruct({
  int? id,
  int? orderId,
  int? userId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtVOrderFollowerStruct(
      id: id,
      orderId: orderId,
      userId: userId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtVOrderFollowerStruct? updateDtVOrderFollowerStruct(
  DtVOrderFollowerStruct? dtVOrderFollower, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtVOrderFollower
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtVOrderFollowerStructData(
  Map<String, dynamic> firestoreData,
  DtVOrderFollowerStruct? dtVOrderFollower,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtVOrderFollower == null) {
    return;
  }
  if (dtVOrderFollower.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtVOrderFollower.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtVOrderFollowerData =
      getDtVOrderFollowerFirestoreData(dtVOrderFollower, forFieldValue);
  final nestedData =
      dtVOrderFollowerData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dtVOrderFollower.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtVOrderFollowerFirestoreData(
  DtVOrderFollowerStruct? dtVOrderFollower, [
  bool forFieldValue = false,
]) {
  if (dtVOrderFollower == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtVOrderFollower.toMap());

  // Add any Firestore field values
  dtVOrderFollower.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtVOrderFollowerListFirestoreData(
  List<DtVOrderFollowerStruct>? dtVOrderFollowers,
) =>
    dtVOrderFollowers
        ?.map((e) => getDtVOrderFollowerFirestoreData(e, true))
        .toList() ??
    [];

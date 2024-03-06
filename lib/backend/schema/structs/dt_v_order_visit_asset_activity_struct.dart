// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtVOrderVisitAssetActivityStruct extends FFFirebaseStruct {
  DtVOrderVisitAssetActivityStruct({
    int? id,
    int? orderVisitAssetId,
    int? activityId,
    String? activityDescription,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _orderVisitAssetId = orderVisitAssetId,
        _activityId = activityId,
        _activityDescription = activityDescription,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "orderVisitAssetId" field.
  int? _orderVisitAssetId;
  int get orderVisitAssetId => _orderVisitAssetId ?? 0;
  set orderVisitAssetId(int? val) => _orderVisitAssetId = val;
  void incrementOrderVisitAssetId(int amount) =>
      _orderVisitAssetId = orderVisitAssetId + amount;
  bool hasOrderVisitAssetId() => _orderVisitAssetId != null;

  // "activityId" field.
  int? _activityId;
  int get activityId => _activityId ?? 0;
  set activityId(int? val) => _activityId = val;
  void incrementActivityId(int amount) => _activityId = activityId + amount;
  bool hasActivityId() => _activityId != null;

  // "activityDescription" field.
  String? _activityDescription;
  String get activityDescription => _activityDescription ?? '';
  set activityDescription(String? val) => _activityDescription = val;
  bool hasActivityDescription() => _activityDescription != null;

  static DtVOrderVisitAssetActivityStruct fromMap(Map<String, dynamic> data) =>
      DtVOrderVisitAssetActivityStruct(
        id: castToType<int>(data['id']),
        orderVisitAssetId: castToType<int>(data['orderVisitAssetId']),
        activityId: castToType<int>(data['activityId']),
        activityDescription: data['activityDescription'] as String?,
      );

  static DtVOrderVisitAssetActivityStruct? maybeFromMap(dynamic data) => data
          is Map
      ? DtVOrderVisitAssetActivityStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'orderVisitAssetId': _orderVisitAssetId,
        'activityId': _activityId,
        'activityDescription': _activityDescription,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'orderVisitAssetId': serializeParam(
          _orderVisitAssetId,
          ParamType.int,
        ),
        'activityId': serializeParam(
          _activityId,
          ParamType.int,
        ),
        'activityDescription': serializeParam(
          _activityDescription,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtVOrderVisitAssetActivityStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtVOrderVisitAssetActivityStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        orderVisitAssetId: deserializeParam(
          data['orderVisitAssetId'],
          ParamType.int,
          false,
        ),
        activityId: deserializeParam(
          data['activityId'],
          ParamType.int,
          false,
        ),
        activityDescription: deserializeParam(
          data['activityDescription'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtVOrderVisitAssetActivityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtVOrderVisitAssetActivityStruct &&
        id == other.id &&
        orderVisitAssetId == other.orderVisitAssetId &&
        activityId == other.activityId &&
        activityDescription == other.activityDescription;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, orderVisitAssetId, activityId, activityDescription]);
}

DtVOrderVisitAssetActivityStruct createDtVOrderVisitAssetActivityStruct({
  int? id,
  int? orderVisitAssetId,
  int? activityId,
  String? activityDescription,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtVOrderVisitAssetActivityStruct(
      id: id,
      orderVisitAssetId: orderVisitAssetId,
      activityId: activityId,
      activityDescription: activityDescription,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtVOrderVisitAssetActivityStruct? updateDtVOrderVisitAssetActivityStruct(
  DtVOrderVisitAssetActivityStruct? dtVOrderVisitAssetActivity, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtVOrderVisitAssetActivity
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtVOrderVisitAssetActivityStructData(
  Map<String, dynamic> firestoreData,
  DtVOrderVisitAssetActivityStruct? dtVOrderVisitAssetActivity,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtVOrderVisitAssetActivity == null) {
    return;
  }
  if (dtVOrderVisitAssetActivity.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      dtVOrderVisitAssetActivity.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtVOrderVisitAssetActivityData =
      getDtVOrderVisitAssetActivityFirestoreData(
          dtVOrderVisitAssetActivity, forFieldValue);
  final nestedData = dtVOrderVisitAssetActivityData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      dtVOrderVisitAssetActivity.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtVOrderVisitAssetActivityFirestoreData(
  DtVOrderVisitAssetActivityStruct? dtVOrderVisitAssetActivity, [
  bool forFieldValue = false,
]) {
  if (dtVOrderVisitAssetActivity == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtVOrderVisitAssetActivity.toMap());

  // Add any Firestore field values
  dtVOrderVisitAssetActivity.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtVOrderVisitAssetActivityListFirestoreData(
  List<DtVOrderVisitAssetActivityStruct>? dtVOrderVisitAssetActivitys,
) =>
    dtVOrderVisitAssetActivitys
        ?.map((e) => getDtVOrderVisitAssetActivityFirestoreData(e, true))
        .toList() ??
    [];

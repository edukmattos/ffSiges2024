// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderVisitAssetStruct extends FFFirebaseStruct {
  DtOrderVisitAssetStruct({
    int? id,
    int? processingId,
    String? processingDescription,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _processingId = processingId,
        _processingDescription = processingDescription,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "processingId" field.
  int? _processingId;
  int get processingId => _processingId ?? 0;
  set processingId(int? val) => _processingId = val;
  void incrementProcessingId(int amount) =>
      _processingId = processingId + amount;
  bool hasProcessingId() => _processingId != null;

  // "processingDescription" field.
  String? _processingDescription;
  String get processingDescription => _processingDescription ?? '';
  set processingDescription(String? val) => _processingDescription = val;
  bool hasProcessingDescription() => _processingDescription != null;

  static DtOrderVisitAssetStruct fromMap(Map<String, dynamic> data) =>
      DtOrderVisitAssetStruct(
        id: castToType<int>(data['id']),
        processingId: castToType<int>(data['processingId']),
        processingDescription: data['processingDescription'] as String?,
      );

  static DtOrderVisitAssetStruct? maybeFromMap(dynamic data) => data is Map
      ? DtOrderVisitAssetStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'processingId': _processingId,
        'processingDescription': _processingDescription,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'processingId': serializeParam(
          _processingId,
          ParamType.int,
        ),
        'processingDescription': serializeParam(
          _processingDescription,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtOrderVisitAssetStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtOrderVisitAssetStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        processingId: deserializeParam(
          data['processingId'],
          ParamType.int,
          false,
        ),
        processingDescription: deserializeParam(
          data['processingDescription'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtOrderVisitAssetStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderVisitAssetStruct &&
        id == other.id &&
        processingId == other.processingId &&
        processingDescription == other.processingDescription;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, processingId, processingDescription]);
}

DtOrderVisitAssetStruct createDtOrderVisitAssetStruct({
  int? id,
  int? processingId,
  String? processingDescription,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtOrderVisitAssetStruct(
      id: id,
      processingId: processingId,
      processingDescription: processingDescription,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtOrderVisitAssetStruct? updateDtOrderVisitAssetStruct(
  DtOrderVisitAssetStruct? dtOrderVisitAsset, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtOrderVisitAsset
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtOrderVisitAssetStructData(
  Map<String, dynamic> firestoreData,
  DtOrderVisitAssetStruct? dtOrderVisitAsset,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtOrderVisitAsset == null) {
    return;
  }
  if (dtOrderVisitAsset.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtOrderVisitAsset.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtOrderVisitAssetData =
      getDtOrderVisitAssetFirestoreData(dtOrderVisitAsset, forFieldValue);
  final nestedData =
      dtOrderVisitAssetData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dtOrderVisitAsset.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtOrderVisitAssetFirestoreData(
  DtOrderVisitAssetStruct? dtOrderVisitAsset, [
  bool forFieldValue = false,
]) {
  if (dtOrderVisitAsset == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtOrderVisitAsset.toMap());

  // Add any Firestore field values
  dtOrderVisitAsset.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtOrderVisitAssetListFirestoreData(
  List<DtOrderVisitAssetStruct>? dtOrderVisitAssets,
) =>
    dtOrderVisitAssets
        ?.map((e) => getDtOrderVisitAssetFirestoreData(e, true))
        .toList() ??
    [];

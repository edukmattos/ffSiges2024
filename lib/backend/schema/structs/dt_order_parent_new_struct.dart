// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderParentNewStruct extends FFFirebaseStruct {
  DtOrderParentNewStruct({
    int? stepForm,
    int? unitId,
    int? assetTagId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _stepForm = stepForm,
        _unitId = unitId,
        _assetTagId = assetTagId,
        super(firestoreUtilData);

  // "stepForm" field.
  int? _stepForm;
  int get stepForm => _stepForm ?? 0;
  set stepForm(int? val) => _stepForm = val;
  void incrementStepForm(int amount) => _stepForm = stepForm + amount;
  bool hasStepForm() => _stepForm != null;

  // "unitId" field.
  int? _unitId;
  int get unitId => _unitId ?? 0;
  set unitId(int? val) => _unitId = val;
  void incrementUnitId(int amount) => _unitId = unitId + amount;
  bool hasUnitId() => _unitId != null;

  // "assetTagId" field.
  int? _assetTagId;
  int get assetTagId => _assetTagId ?? 0;
  set assetTagId(int? val) => _assetTagId = val;
  void incrementAssetTagId(int amount) => _assetTagId = assetTagId + amount;
  bool hasAssetTagId() => _assetTagId != null;

  static DtOrderParentNewStruct fromMap(Map<String, dynamic> data) =>
      DtOrderParentNewStruct(
        stepForm: castToType<int>(data['stepForm']),
        unitId: castToType<int>(data['unitId']),
        assetTagId: castToType<int>(data['assetTagId']),
      );

  static DtOrderParentNewStruct? maybeFromMap(dynamic data) => data is Map
      ? DtOrderParentNewStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'stepForm': _stepForm,
        'unitId': _unitId,
        'assetTagId': _assetTagId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'stepForm': serializeParam(
          _stepForm,
          ParamType.int,
        ),
        'unitId': serializeParam(
          _unitId,
          ParamType.int,
        ),
        'assetTagId': serializeParam(
          _assetTagId,
          ParamType.int,
        ),
      }.withoutNulls;

  static DtOrderParentNewStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtOrderParentNewStruct(
        stepForm: deserializeParam(
          data['stepForm'],
          ParamType.int,
          false,
        ),
        unitId: deserializeParam(
          data['unitId'],
          ParamType.int,
          false,
        ),
        assetTagId: deserializeParam(
          data['assetTagId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DtOrderParentNewStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderParentNewStruct &&
        stepForm == other.stepForm &&
        unitId == other.unitId &&
        assetTagId == other.assetTagId;
  }

  @override
  int get hashCode => const ListEquality().hash([stepForm, unitId, assetTagId]);
}

DtOrderParentNewStruct createDtOrderParentNewStruct({
  int? stepForm,
  int? unitId,
  int? assetTagId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtOrderParentNewStruct(
      stepForm: stepForm,
      unitId: unitId,
      assetTagId: assetTagId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtOrderParentNewStruct? updateDtOrderParentNewStruct(
  DtOrderParentNewStruct? dtOrderParentNew, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtOrderParentNew
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtOrderParentNewStructData(
  Map<String, dynamic> firestoreData,
  DtOrderParentNewStruct? dtOrderParentNew,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtOrderParentNew == null) {
    return;
  }
  if (dtOrderParentNew.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtOrderParentNew.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtOrderParentNewData =
      getDtOrderParentNewFirestoreData(dtOrderParentNew, forFieldValue);
  final nestedData =
      dtOrderParentNewData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dtOrderParentNew.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtOrderParentNewFirestoreData(
  DtOrderParentNewStruct? dtOrderParentNew, [
  bool forFieldValue = false,
]) {
  if (dtOrderParentNew == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtOrderParentNew.toMap());

  // Add any Firestore field values
  dtOrderParentNew.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtOrderParentNewListFirestoreData(
  List<DtOrderParentNewStruct>? dtOrderParentNews,
) =>
    dtOrderParentNews
        ?.map((e) => getDtOrderParentNewFirestoreData(e, true))
        .toList() ??
    [];

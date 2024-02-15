// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrderStruct extends FFFirebaseStruct {
  DtOrderStruct({
    int? id,
    int? orderTypeId,
    String? requestedServices,
    int? orderPriorityId,
    String? requesterPhone,
    int? unitId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _orderTypeId = orderTypeId,
        _requestedServices = requestedServices,
        _orderPriorityId = orderPriorityId,
        _requesterPhone = requesterPhone,
        _unitId = unitId,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "orderTypeId" field.
  int? _orderTypeId;
  int get orderTypeId => _orderTypeId ?? 0;
  set orderTypeId(int? val) => _orderTypeId = val;
  void incrementOrderTypeId(int amount) => _orderTypeId = orderTypeId + amount;
  bool hasOrderTypeId() => _orderTypeId != null;

  // "requestedServices" field.
  String? _requestedServices;
  String get requestedServices => _requestedServices ?? '';
  set requestedServices(String? val) => _requestedServices = val;
  bool hasRequestedServices() => _requestedServices != null;

  // "orderPriorityId" field.
  int? _orderPriorityId;
  int get orderPriorityId => _orderPriorityId ?? 0;
  set orderPriorityId(int? val) => _orderPriorityId = val;
  void incrementOrderPriorityId(int amount) =>
      _orderPriorityId = orderPriorityId + amount;
  bool hasOrderPriorityId() => _orderPriorityId != null;

  // "requesterPhone" field.
  String? _requesterPhone;
  String get requesterPhone => _requesterPhone ?? '';
  set requesterPhone(String? val) => _requesterPhone = val;
  bool hasRequesterPhone() => _requesterPhone != null;

  // "unitId" field.
  int? _unitId;
  int get unitId => _unitId ?? 0;
  set unitId(int? val) => _unitId = val;
  void incrementUnitId(int amount) => _unitId = unitId + amount;
  bool hasUnitId() => _unitId != null;

  static DtOrderStruct fromMap(Map<String, dynamic> data) => DtOrderStruct(
        id: castToType<int>(data['id']),
        orderTypeId: castToType<int>(data['orderTypeId']),
        requestedServices: data['requestedServices'] as String?,
        orderPriorityId: castToType<int>(data['orderPriorityId']),
        requesterPhone: data['requesterPhone'] as String?,
        unitId: castToType<int>(data['unitId']),
      );

  static DtOrderStruct? maybeFromMap(dynamic data) =>
      data is Map ? DtOrderStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'orderTypeId': _orderTypeId,
        'requestedServices': _requestedServices,
        'orderPriorityId': _orderPriorityId,
        'requesterPhone': _requesterPhone,
        'unitId': _unitId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'orderTypeId': serializeParam(
          _orderTypeId,
          ParamType.int,
        ),
        'requestedServices': serializeParam(
          _requestedServices,
          ParamType.String,
        ),
        'orderPriorityId': serializeParam(
          _orderPriorityId,
          ParamType.int,
        ),
        'requesterPhone': serializeParam(
          _requesterPhone,
          ParamType.String,
        ),
        'unitId': serializeParam(
          _unitId,
          ParamType.int,
        ),
      }.withoutNulls;

  static DtOrderStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtOrderStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        orderTypeId: deserializeParam(
          data['orderTypeId'],
          ParamType.int,
          false,
        ),
        requestedServices: deserializeParam(
          data['requestedServices'],
          ParamType.String,
          false,
        ),
        orderPriorityId: deserializeParam(
          data['orderPriorityId'],
          ParamType.int,
          false,
        ),
        requesterPhone: deserializeParam(
          data['requesterPhone'],
          ParamType.String,
          false,
        ),
        unitId: deserializeParam(
          data['unitId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DtOrderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrderStruct &&
        id == other.id &&
        orderTypeId == other.orderTypeId &&
        requestedServices == other.requestedServices &&
        orderPriorityId == other.orderPriorityId &&
        requesterPhone == other.requesterPhone &&
        unitId == other.unitId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        orderTypeId,
        requestedServices,
        orderPriorityId,
        requesterPhone,
        unitId
      ]);
}

DtOrderStruct createDtOrderStruct({
  int? id,
  int? orderTypeId,
  String? requestedServices,
  int? orderPriorityId,
  String? requesterPhone,
  int? unitId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtOrderStruct(
      id: id,
      orderTypeId: orderTypeId,
      requestedServices: requestedServices,
      orderPriorityId: orderPriorityId,
      requesterPhone: requesterPhone,
      unitId: unitId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtOrderStruct? updateDtOrderStruct(
  DtOrderStruct? dtOrder, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtOrder
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtOrderStructData(
  Map<String, dynamic> firestoreData,
  DtOrderStruct? dtOrder,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtOrder == null) {
    return;
  }
  if (dtOrder.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtOrder.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtOrderData = getDtOrderFirestoreData(dtOrder, forFieldValue);
  final nestedData = dtOrderData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dtOrder.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtOrderFirestoreData(
  DtOrderStruct? dtOrder, [
  bool forFieldValue = false,
]) {
  if (dtOrder == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtOrder.toMap());

  // Add any Firestore field values
  dtOrder.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtOrderListFirestoreData(
  List<DtOrderStruct>? dtOrders,
) =>
    dtOrders?.map((e) => getDtOrderFirestoreData(e, true)).toList() ?? [];

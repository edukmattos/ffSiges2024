// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtVOrderParentStruct extends FFFirebaseStruct {
  DtVOrderParentStruct({
    int? id,
    int? companyId,
    int? departmentId,
    String? orderMask,
    int? typeId,
    String? typeCode,
    String? requestedServices,
    int? systemParentId,
    String? systemParentDescription,
    String? systemParentCode,
    int? systemId,
    String? systemDescription,
    String? systemCode,
    int? unitTypeParentId,
    String? unitTypeParentDescription,
    String? unitTypeParentCode,
    int? unitTypeId,
    String? unitTypeDescription,
    String? unitTypeCode,
    int? unitId,
    String? unitDescription,
    String? unitAddress,
    double? unitLatitude,
    double? unitLongitude,
    String? requesterName,
    String? requesterPhone,
    int? requesterTeamId,
    String? requesterTeamCode,
    DateTime? requesterDate,
    int? requesterDateUnix,
    int? statusId,
    String? statusCode,
    String? statusDescription,
    DateTime? statusDate,
    int? statusDateUnix,
    int? priorityId,
    String? priorityCode,
    String? priorityDescription,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _companyId = companyId,
        _departmentId = departmentId,
        _orderMask = orderMask,
        _typeId = typeId,
        _typeCode = typeCode,
        _requestedServices = requestedServices,
        _systemParentId = systemParentId,
        _systemParentDescription = systemParentDescription,
        _systemParentCode = systemParentCode,
        _systemId = systemId,
        _systemDescription = systemDescription,
        _systemCode = systemCode,
        _unitTypeParentId = unitTypeParentId,
        _unitTypeParentDescription = unitTypeParentDescription,
        _unitTypeParentCode = unitTypeParentCode,
        _unitTypeId = unitTypeId,
        _unitTypeDescription = unitTypeDescription,
        _unitTypeCode = unitTypeCode,
        _unitId = unitId,
        _unitDescription = unitDescription,
        _unitAddress = unitAddress,
        _unitLatitude = unitLatitude,
        _unitLongitude = unitLongitude,
        _requesterName = requesterName,
        _requesterPhone = requesterPhone,
        _requesterTeamId = requesterTeamId,
        _requesterTeamCode = requesterTeamCode,
        _requesterDate = requesterDate,
        _requesterDateUnix = requesterDateUnix,
        _statusId = statusId,
        _statusCode = statusCode,
        _statusDescription = statusDescription,
        _statusDate = statusDate,
        _statusDateUnix = statusDateUnix,
        _priorityId = priorityId,
        _priorityCode = priorityCode,
        _priorityDescription = priorityDescription,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "companyId" field.
  int? _companyId;
  int get companyId => _companyId ?? 0;
  set companyId(int? val) => _companyId = val;
  void incrementCompanyId(int amount) => _companyId = companyId + amount;
  bool hasCompanyId() => _companyId != null;

  // "departmentId" field.
  int? _departmentId;
  int get departmentId => _departmentId ?? 0;
  set departmentId(int? val) => _departmentId = val;
  void incrementDepartmentId(int amount) =>
      _departmentId = departmentId + amount;
  bool hasDepartmentId() => _departmentId != null;

  // "orderMask" field.
  String? _orderMask;
  String get orderMask => _orderMask ?? '';
  set orderMask(String? val) => _orderMask = val;
  bool hasOrderMask() => _orderMask != null;

  // "typeId" field.
  int? _typeId;
  int get typeId => _typeId ?? 0;
  set typeId(int? val) => _typeId = val;
  void incrementTypeId(int amount) => _typeId = typeId + amount;
  bool hasTypeId() => _typeId != null;

  // "typeCode" field.
  String? _typeCode;
  String get typeCode => _typeCode ?? '';
  set typeCode(String? val) => _typeCode = val;
  bool hasTypeCode() => _typeCode != null;

  // "requestedServices" field.
  String? _requestedServices;
  String get requestedServices => _requestedServices ?? '';
  set requestedServices(String? val) => _requestedServices = val;
  bool hasRequestedServices() => _requestedServices != null;

  // "systemParentId" field.
  int? _systemParentId;
  int get systemParentId => _systemParentId ?? 0;
  set systemParentId(int? val) => _systemParentId = val;
  void incrementSystemParentId(int amount) =>
      _systemParentId = systemParentId + amount;
  bool hasSystemParentId() => _systemParentId != null;

  // "systemParentDescription" field.
  String? _systemParentDescription;
  String get systemParentDescription => _systemParentDescription ?? '';
  set systemParentDescription(String? val) => _systemParentDescription = val;
  bool hasSystemParentDescription() => _systemParentDescription != null;

  // "systemParentCode" field.
  String? _systemParentCode;
  String get systemParentCode => _systemParentCode ?? '';
  set systemParentCode(String? val) => _systemParentCode = val;
  bool hasSystemParentCode() => _systemParentCode != null;

  // "systemId" field.
  int? _systemId;
  int get systemId => _systemId ?? 0;
  set systemId(int? val) => _systemId = val;
  void incrementSystemId(int amount) => _systemId = systemId + amount;
  bool hasSystemId() => _systemId != null;

  // "systemDescription" field.
  String? _systemDescription;
  String get systemDescription => _systemDescription ?? '';
  set systemDescription(String? val) => _systemDescription = val;
  bool hasSystemDescription() => _systemDescription != null;

  // "systemCode" field.
  String? _systemCode;
  String get systemCode => _systemCode ?? '';
  set systemCode(String? val) => _systemCode = val;
  bool hasSystemCode() => _systemCode != null;

  // "unitTypeParentId" field.
  int? _unitTypeParentId;
  int get unitTypeParentId => _unitTypeParentId ?? 0;
  set unitTypeParentId(int? val) => _unitTypeParentId = val;
  void incrementUnitTypeParentId(int amount) =>
      _unitTypeParentId = unitTypeParentId + amount;
  bool hasUnitTypeParentId() => _unitTypeParentId != null;

  // "unitTypeParentDescription" field.
  String? _unitTypeParentDescription;
  String get unitTypeParentDescription => _unitTypeParentDescription ?? '';
  set unitTypeParentDescription(String? val) =>
      _unitTypeParentDescription = val;
  bool hasUnitTypeParentDescription() => _unitTypeParentDescription != null;

  // "unitTypeParentCode" field.
  String? _unitTypeParentCode;
  String get unitTypeParentCode => _unitTypeParentCode ?? '';
  set unitTypeParentCode(String? val) => _unitTypeParentCode = val;
  bool hasUnitTypeParentCode() => _unitTypeParentCode != null;

  // "unitTypeId" field.
  int? _unitTypeId;
  int get unitTypeId => _unitTypeId ?? 0;
  set unitTypeId(int? val) => _unitTypeId = val;
  void incrementUnitTypeId(int amount) => _unitTypeId = unitTypeId + amount;
  bool hasUnitTypeId() => _unitTypeId != null;

  // "unitTypeDescription" field.
  String? _unitTypeDescription;
  String get unitTypeDescription => _unitTypeDescription ?? '';
  set unitTypeDescription(String? val) => _unitTypeDescription = val;
  bool hasUnitTypeDescription() => _unitTypeDescription != null;

  // "unitTypeCode" field.
  String? _unitTypeCode;
  String get unitTypeCode => _unitTypeCode ?? '';
  set unitTypeCode(String? val) => _unitTypeCode = val;
  bool hasUnitTypeCode() => _unitTypeCode != null;

  // "unitId" field.
  int? _unitId;
  int get unitId => _unitId ?? 0;
  set unitId(int? val) => _unitId = val;
  void incrementUnitId(int amount) => _unitId = unitId + amount;
  bool hasUnitId() => _unitId != null;

  // "unitDescription" field.
  String? _unitDescription;
  String get unitDescription => _unitDescription ?? '';
  set unitDescription(String? val) => _unitDescription = val;
  bool hasUnitDescription() => _unitDescription != null;

  // "unitAddress" field.
  String? _unitAddress;
  String get unitAddress => _unitAddress ?? '';
  set unitAddress(String? val) => _unitAddress = val;
  bool hasUnitAddress() => _unitAddress != null;

  // "unitLatitude" field.
  double? _unitLatitude;
  double get unitLatitude => _unitLatitude ?? 0.0;
  set unitLatitude(double? val) => _unitLatitude = val;
  void incrementUnitLatitude(double amount) =>
      _unitLatitude = unitLatitude + amount;
  bool hasUnitLatitude() => _unitLatitude != null;

  // "unitLongitude" field.
  double? _unitLongitude;
  double get unitLongitude => _unitLongitude ?? 0.0;
  set unitLongitude(double? val) => _unitLongitude = val;
  void incrementUnitLongitude(double amount) =>
      _unitLongitude = unitLongitude + amount;
  bool hasUnitLongitude() => _unitLongitude != null;

  // "requesterName" field.
  String? _requesterName;
  String get requesterName => _requesterName ?? '';
  set requesterName(String? val) => _requesterName = val;
  bool hasRequesterName() => _requesterName != null;

  // "requesterPhone" field.
  String? _requesterPhone;
  String get requesterPhone => _requesterPhone ?? '';
  set requesterPhone(String? val) => _requesterPhone = val;
  bool hasRequesterPhone() => _requesterPhone != null;

  // "requesterTeamId" field.
  int? _requesterTeamId;
  int get requesterTeamId => _requesterTeamId ?? 0;
  set requesterTeamId(int? val) => _requesterTeamId = val;
  void incrementRequesterTeamId(int amount) =>
      _requesterTeamId = requesterTeamId + amount;
  bool hasRequesterTeamId() => _requesterTeamId != null;

  // "requesterTeamCode" field.
  String? _requesterTeamCode;
  String get requesterTeamCode => _requesterTeamCode ?? '';
  set requesterTeamCode(String? val) => _requesterTeamCode = val;
  bool hasRequesterTeamCode() => _requesterTeamCode != null;

  // "requesterDate" field.
  DateTime? _requesterDate;
  DateTime? get requesterDate => _requesterDate;
  set requesterDate(DateTime? val) => _requesterDate = val;
  bool hasRequesterDate() => _requesterDate != null;

  // "requesterDateUnix" field.
  int? _requesterDateUnix;
  int get requesterDateUnix => _requesterDateUnix ?? 0;
  set requesterDateUnix(int? val) => _requesterDateUnix = val;
  void incrementRequesterDateUnix(int amount) =>
      _requesterDateUnix = requesterDateUnix + amount;
  bool hasRequesterDateUnix() => _requesterDateUnix != null;

  // "statusId" field.
  int? _statusId;
  int get statusId => _statusId ?? 0;
  set statusId(int? val) => _statusId = val;
  void incrementStatusId(int amount) => _statusId = statusId + amount;
  bool hasStatusId() => _statusId != null;

  // "statusCode" field.
  String? _statusCode;
  String get statusCode => _statusCode ?? '';
  set statusCode(String? val) => _statusCode = val;
  bool hasStatusCode() => _statusCode != null;

  // "statusDescription" field.
  String? _statusDescription;
  String get statusDescription => _statusDescription ?? '';
  set statusDescription(String? val) => _statusDescription = val;
  bool hasStatusDescription() => _statusDescription != null;

  // "statusDate" field.
  DateTime? _statusDate;
  DateTime? get statusDate => _statusDate;
  set statusDate(DateTime? val) => _statusDate = val;
  bool hasStatusDate() => _statusDate != null;

  // "statusDateUnix" field.
  int? _statusDateUnix;
  int get statusDateUnix => _statusDateUnix ?? 0;
  set statusDateUnix(int? val) => _statusDateUnix = val;
  void incrementStatusDateUnix(int amount) =>
      _statusDateUnix = statusDateUnix + amount;
  bool hasStatusDateUnix() => _statusDateUnix != null;

  // "priorityId" field.
  int? _priorityId;
  int get priorityId => _priorityId ?? 0;
  set priorityId(int? val) => _priorityId = val;
  void incrementPriorityId(int amount) => _priorityId = priorityId + amount;
  bool hasPriorityId() => _priorityId != null;

  // "priorityCode" field.
  String? _priorityCode;
  String get priorityCode => _priorityCode ?? '';
  set priorityCode(String? val) => _priorityCode = val;
  bool hasPriorityCode() => _priorityCode != null;

  // "priorityDescription" field.
  String? _priorityDescription;
  String get priorityDescription => _priorityDescription ?? '';
  set priorityDescription(String? val) => _priorityDescription = val;
  bool hasPriorityDescription() => _priorityDescription != null;

  static DtVOrderParentStruct fromMap(Map<String, dynamic> data) =>
      DtVOrderParentStruct(
        id: castToType<int>(data['id']),
        companyId: castToType<int>(data['companyId']),
        departmentId: castToType<int>(data['departmentId']),
        orderMask: data['orderMask'] as String?,
        typeId: castToType<int>(data['typeId']),
        typeCode: data['typeCode'] as String?,
        requestedServices: data['requestedServices'] as String?,
        systemParentId: castToType<int>(data['systemParentId']),
        systemParentDescription: data['systemParentDescription'] as String?,
        systemParentCode: data['systemParentCode'] as String?,
        systemId: castToType<int>(data['systemId']),
        systemDescription: data['systemDescription'] as String?,
        systemCode: data['systemCode'] as String?,
        unitTypeParentId: castToType<int>(data['unitTypeParentId']),
        unitTypeParentDescription: data['unitTypeParentDescription'] as String?,
        unitTypeParentCode: data['unitTypeParentCode'] as String?,
        unitTypeId: castToType<int>(data['unitTypeId']),
        unitTypeDescription: data['unitTypeDescription'] as String?,
        unitTypeCode: data['unitTypeCode'] as String?,
        unitId: castToType<int>(data['unitId']),
        unitDescription: data['unitDescription'] as String?,
        unitAddress: data['unitAddress'] as String?,
        unitLatitude: castToType<double>(data['unitLatitude']),
        unitLongitude: castToType<double>(data['unitLongitude']),
        requesterName: data['requesterName'] as String?,
        requesterPhone: data['requesterPhone'] as String?,
        requesterTeamId: castToType<int>(data['requesterTeamId']),
        requesterTeamCode: data['requesterTeamCode'] as String?,
        requesterDate: data['requesterDate'] as DateTime?,
        requesterDateUnix: castToType<int>(data['requesterDateUnix']),
        statusId: castToType<int>(data['statusId']),
        statusCode: data['statusCode'] as String?,
        statusDescription: data['statusDescription'] as String?,
        statusDate: data['statusDate'] as DateTime?,
        statusDateUnix: castToType<int>(data['statusDateUnix']),
        priorityId: castToType<int>(data['priorityId']),
        priorityCode: data['priorityCode'] as String?,
        priorityDescription: data['priorityDescription'] as String?,
      );

  static DtVOrderParentStruct? maybeFromMap(dynamic data) => data is Map
      ? DtVOrderParentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'companyId': _companyId,
        'departmentId': _departmentId,
        'orderMask': _orderMask,
        'typeId': _typeId,
        'typeCode': _typeCode,
        'requestedServices': _requestedServices,
        'systemParentId': _systemParentId,
        'systemParentDescription': _systemParentDescription,
        'systemParentCode': _systemParentCode,
        'systemId': _systemId,
        'systemDescription': _systemDescription,
        'systemCode': _systemCode,
        'unitTypeParentId': _unitTypeParentId,
        'unitTypeParentDescription': _unitTypeParentDescription,
        'unitTypeParentCode': _unitTypeParentCode,
        'unitTypeId': _unitTypeId,
        'unitTypeDescription': _unitTypeDescription,
        'unitTypeCode': _unitTypeCode,
        'unitId': _unitId,
        'unitDescription': _unitDescription,
        'unitAddress': _unitAddress,
        'unitLatitude': _unitLatitude,
        'unitLongitude': _unitLongitude,
        'requesterName': _requesterName,
        'requesterPhone': _requesterPhone,
        'requesterTeamId': _requesterTeamId,
        'requesterTeamCode': _requesterTeamCode,
        'requesterDate': _requesterDate,
        'requesterDateUnix': _requesterDateUnix,
        'statusId': _statusId,
        'statusCode': _statusCode,
        'statusDescription': _statusDescription,
        'statusDate': _statusDate,
        'statusDateUnix': _statusDateUnix,
        'priorityId': _priorityId,
        'priorityCode': _priorityCode,
        'priorityDescription': _priorityDescription,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'companyId': serializeParam(
          _companyId,
          ParamType.int,
        ),
        'departmentId': serializeParam(
          _departmentId,
          ParamType.int,
        ),
        'orderMask': serializeParam(
          _orderMask,
          ParamType.String,
        ),
        'typeId': serializeParam(
          _typeId,
          ParamType.int,
        ),
        'typeCode': serializeParam(
          _typeCode,
          ParamType.String,
        ),
        'requestedServices': serializeParam(
          _requestedServices,
          ParamType.String,
        ),
        'systemParentId': serializeParam(
          _systemParentId,
          ParamType.int,
        ),
        'systemParentDescription': serializeParam(
          _systemParentDescription,
          ParamType.String,
        ),
        'systemParentCode': serializeParam(
          _systemParentCode,
          ParamType.String,
        ),
        'systemId': serializeParam(
          _systemId,
          ParamType.int,
        ),
        'systemDescription': serializeParam(
          _systemDescription,
          ParamType.String,
        ),
        'systemCode': serializeParam(
          _systemCode,
          ParamType.String,
        ),
        'unitTypeParentId': serializeParam(
          _unitTypeParentId,
          ParamType.int,
        ),
        'unitTypeParentDescription': serializeParam(
          _unitTypeParentDescription,
          ParamType.String,
        ),
        'unitTypeParentCode': serializeParam(
          _unitTypeParentCode,
          ParamType.String,
        ),
        'unitTypeId': serializeParam(
          _unitTypeId,
          ParamType.int,
        ),
        'unitTypeDescription': serializeParam(
          _unitTypeDescription,
          ParamType.String,
        ),
        'unitTypeCode': serializeParam(
          _unitTypeCode,
          ParamType.String,
        ),
        'unitId': serializeParam(
          _unitId,
          ParamType.int,
        ),
        'unitDescription': serializeParam(
          _unitDescription,
          ParamType.String,
        ),
        'unitAddress': serializeParam(
          _unitAddress,
          ParamType.String,
        ),
        'unitLatitude': serializeParam(
          _unitLatitude,
          ParamType.double,
        ),
        'unitLongitude': serializeParam(
          _unitLongitude,
          ParamType.double,
        ),
        'requesterName': serializeParam(
          _requesterName,
          ParamType.String,
        ),
        'requesterPhone': serializeParam(
          _requesterPhone,
          ParamType.String,
        ),
        'requesterTeamId': serializeParam(
          _requesterTeamId,
          ParamType.int,
        ),
        'requesterTeamCode': serializeParam(
          _requesterTeamCode,
          ParamType.String,
        ),
        'requesterDate': serializeParam(
          _requesterDate,
          ParamType.DateTime,
        ),
        'requesterDateUnix': serializeParam(
          _requesterDateUnix,
          ParamType.int,
        ),
        'statusId': serializeParam(
          _statusId,
          ParamType.int,
        ),
        'statusCode': serializeParam(
          _statusCode,
          ParamType.String,
        ),
        'statusDescription': serializeParam(
          _statusDescription,
          ParamType.String,
        ),
        'statusDate': serializeParam(
          _statusDate,
          ParamType.DateTime,
        ),
        'statusDateUnix': serializeParam(
          _statusDateUnix,
          ParamType.int,
        ),
        'priorityId': serializeParam(
          _priorityId,
          ParamType.int,
        ),
        'priorityCode': serializeParam(
          _priorityCode,
          ParamType.String,
        ),
        'priorityDescription': serializeParam(
          _priorityDescription,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtVOrderParentStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtVOrderParentStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        companyId: deserializeParam(
          data['companyId'],
          ParamType.int,
          false,
        ),
        departmentId: deserializeParam(
          data['departmentId'],
          ParamType.int,
          false,
        ),
        orderMask: deserializeParam(
          data['orderMask'],
          ParamType.String,
          false,
        ),
        typeId: deserializeParam(
          data['typeId'],
          ParamType.int,
          false,
        ),
        typeCode: deserializeParam(
          data['typeCode'],
          ParamType.String,
          false,
        ),
        requestedServices: deserializeParam(
          data['requestedServices'],
          ParamType.String,
          false,
        ),
        systemParentId: deserializeParam(
          data['systemParentId'],
          ParamType.int,
          false,
        ),
        systemParentDescription: deserializeParam(
          data['systemParentDescription'],
          ParamType.String,
          false,
        ),
        systemParentCode: deserializeParam(
          data['systemParentCode'],
          ParamType.String,
          false,
        ),
        systemId: deserializeParam(
          data['systemId'],
          ParamType.int,
          false,
        ),
        systemDescription: deserializeParam(
          data['systemDescription'],
          ParamType.String,
          false,
        ),
        systemCode: deserializeParam(
          data['systemCode'],
          ParamType.String,
          false,
        ),
        unitTypeParentId: deserializeParam(
          data['unitTypeParentId'],
          ParamType.int,
          false,
        ),
        unitTypeParentDescription: deserializeParam(
          data['unitTypeParentDescription'],
          ParamType.String,
          false,
        ),
        unitTypeParentCode: deserializeParam(
          data['unitTypeParentCode'],
          ParamType.String,
          false,
        ),
        unitTypeId: deserializeParam(
          data['unitTypeId'],
          ParamType.int,
          false,
        ),
        unitTypeDescription: deserializeParam(
          data['unitTypeDescription'],
          ParamType.String,
          false,
        ),
        unitTypeCode: deserializeParam(
          data['unitTypeCode'],
          ParamType.String,
          false,
        ),
        unitId: deserializeParam(
          data['unitId'],
          ParamType.int,
          false,
        ),
        unitDescription: deserializeParam(
          data['unitDescription'],
          ParamType.String,
          false,
        ),
        unitAddress: deserializeParam(
          data['unitAddress'],
          ParamType.String,
          false,
        ),
        unitLatitude: deserializeParam(
          data['unitLatitude'],
          ParamType.double,
          false,
        ),
        unitLongitude: deserializeParam(
          data['unitLongitude'],
          ParamType.double,
          false,
        ),
        requesterName: deserializeParam(
          data['requesterName'],
          ParamType.String,
          false,
        ),
        requesterPhone: deserializeParam(
          data['requesterPhone'],
          ParamType.String,
          false,
        ),
        requesterTeamId: deserializeParam(
          data['requesterTeamId'],
          ParamType.int,
          false,
        ),
        requesterTeamCode: deserializeParam(
          data['requesterTeamCode'],
          ParamType.String,
          false,
        ),
        requesterDate: deserializeParam(
          data['requesterDate'],
          ParamType.DateTime,
          false,
        ),
        requesterDateUnix: deserializeParam(
          data['requesterDateUnix'],
          ParamType.int,
          false,
        ),
        statusId: deserializeParam(
          data['statusId'],
          ParamType.int,
          false,
        ),
        statusCode: deserializeParam(
          data['statusCode'],
          ParamType.String,
          false,
        ),
        statusDescription: deserializeParam(
          data['statusDescription'],
          ParamType.String,
          false,
        ),
        statusDate: deserializeParam(
          data['statusDate'],
          ParamType.DateTime,
          false,
        ),
        statusDateUnix: deserializeParam(
          data['statusDateUnix'],
          ParamType.int,
          false,
        ),
        priorityId: deserializeParam(
          data['priorityId'],
          ParamType.int,
          false,
        ),
        priorityCode: deserializeParam(
          data['priorityCode'],
          ParamType.String,
          false,
        ),
        priorityDescription: deserializeParam(
          data['priorityDescription'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtVOrderParentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtVOrderParentStruct &&
        id == other.id &&
        companyId == other.companyId &&
        departmentId == other.departmentId &&
        orderMask == other.orderMask &&
        typeId == other.typeId &&
        typeCode == other.typeCode &&
        requestedServices == other.requestedServices &&
        systemParentId == other.systemParentId &&
        systemParentDescription == other.systemParentDescription &&
        systemParentCode == other.systemParentCode &&
        systemId == other.systemId &&
        systemDescription == other.systemDescription &&
        systemCode == other.systemCode &&
        unitTypeParentId == other.unitTypeParentId &&
        unitTypeParentDescription == other.unitTypeParentDescription &&
        unitTypeParentCode == other.unitTypeParentCode &&
        unitTypeId == other.unitTypeId &&
        unitTypeDescription == other.unitTypeDescription &&
        unitTypeCode == other.unitTypeCode &&
        unitId == other.unitId &&
        unitDescription == other.unitDescription &&
        unitAddress == other.unitAddress &&
        unitLatitude == other.unitLatitude &&
        unitLongitude == other.unitLongitude &&
        requesterName == other.requesterName &&
        requesterPhone == other.requesterPhone &&
        requesterTeamId == other.requesterTeamId &&
        requesterTeamCode == other.requesterTeamCode &&
        requesterDate == other.requesterDate &&
        requesterDateUnix == other.requesterDateUnix &&
        statusId == other.statusId &&
        statusCode == other.statusCode &&
        statusDescription == other.statusDescription &&
        statusDate == other.statusDate &&
        statusDateUnix == other.statusDateUnix &&
        priorityId == other.priorityId &&
        priorityCode == other.priorityCode &&
        priorityDescription == other.priorityDescription;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        companyId,
        departmentId,
        orderMask,
        typeId,
        typeCode,
        requestedServices,
        systemParentId,
        systemParentDescription,
        systemParentCode,
        systemId,
        systemDescription,
        systemCode,
        unitTypeParentId,
        unitTypeParentDescription,
        unitTypeParentCode,
        unitTypeId,
        unitTypeDescription,
        unitTypeCode,
        unitId,
        unitDescription,
        unitAddress,
        unitLatitude,
        unitLongitude,
        requesterName,
        requesterPhone,
        requesterTeamId,
        requesterTeamCode,
        requesterDate,
        requesterDateUnix,
        statusId,
        statusCode,
        statusDescription,
        statusDate,
        statusDateUnix,
        priorityId,
        priorityCode,
        priorityDescription
      ]);
}

DtVOrderParentStruct createDtVOrderParentStruct({
  int? id,
  int? companyId,
  int? departmentId,
  String? orderMask,
  int? typeId,
  String? typeCode,
  String? requestedServices,
  int? systemParentId,
  String? systemParentDescription,
  String? systemParentCode,
  int? systemId,
  String? systemDescription,
  String? systemCode,
  int? unitTypeParentId,
  String? unitTypeParentDescription,
  String? unitTypeParentCode,
  int? unitTypeId,
  String? unitTypeDescription,
  String? unitTypeCode,
  int? unitId,
  String? unitDescription,
  String? unitAddress,
  double? unitLatitude,
  double? unitLongitude,
  String? requesterName,
  String? requesterPhone,
  int? requesterTeamId,
  String? requesterTeamCode,
  DateTime? requesterDate,
  int? requesterDateUnix,
  int? statusId,
  String? statusCode,
  String? statusDescription,
  DateTime? statusDate,
  int? statusDateUnix,
  int? priorityId,
  String? priorityCode,
  String? priorityDescription,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtVOrderParentStruct(
      id: id,
      companyId: companyId,
      departmentId: departmentId,
      orderMask: orderMask,
      typeId: typeId,
      typeCode: typeCode,
      requestedServices: requestedServices,
      systemParentId: systemParentId,
      systemParentDescription: systemParentDescription,
      systemParentCode: systemParentCode,
      systemId: systemId,
      systemDescription: systemDescription,
      systemCode: systemCode,
      unitTypeParentId: unitTypeParentId,
      unitTypeParentDescription: unitTypeParentDescription,
      unitTypeParentCode: unitTypeParentCode,
      unitTypeId: unitTypeId,
      unitTypeDescription: unitTypeDescription,
      unitTypeCode: unitTypeCode,
      unitId: unitId,
      unitDescription: unitDescription,
      unitAddress: unitAddress,
      unitLatitude: unitLatitude,
      unitLongitude: unitLongitude,
      requesterName: requesterName,
      requesterPhone: requesterPhone,
      requesterTeamId: requesterTeamId,
      requesterTeamCode: requesterTeamCode,
      requesterDate: requesterDate,
      requesterDateUnix: requesterDateUnix,
      statusId: statusId,
      statusCode: statusCode,
      statusDescription: statusDescription,
      statusDate: statusDate,
      statusDateUnix: statusDateUnix,
      priorityId: priorityId,
      priorityCode: priorityCode,
      priorityDescription: priorityDescription,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtVOrderParentStruct? updateDtVOrderParentStruct(
  DtVOrderParentStruct? dtVOrderParent, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtVOrderParent
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtVOrderParentStructData(
  Map<String, dynamic> firestoreData,
  DtVOrderParentStruct? dtVOrderParent,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtVOrderParent == null) {
    return;
  }
  if (dtVOrderParent.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtVOrderParent.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtVOrderParentData =
      getDtVOrderParentFirestoreData(dtVOrderParent, forFieldValue);
  final nestedData =
      dtVOrderParentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dtVOrderParent.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtVOrderParentFirestoreData(
  DtVOrderParentStruct? dtVOrderParent, [
  bool forFieldValue = false,
]) {
  if (dtVOrderParent == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtVOrderParent.toMap());

  // Add any Firestore field values
  dtVOrderParent.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtVOrderParentListFirestoreData(
  List<DtVOrderParentStruct>? dtVOrderParents,
) =>
    dtVOrderParents
        ?.map((e) => getDtVOrderParentFirestoreData(e, true))
        .toList() ??
    [];

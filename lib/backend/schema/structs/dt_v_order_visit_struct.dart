// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtVOrderVisitStruct extends FFFirebaseStruct {
  DtVOrderVisitStruct({
    int? id,
    int? orderId,
    String? orderMask,
    String? orderTypeCode,
    String? orderTypeSubCode,
    int? orderStatusId,
    String? orderStatusDescription,
    int? orderParentId,
    double? durationHours,
    int? statusId,
    String? statusDescription,
    int? processingId,
    String? processingDescription,
    int? reportedUserId,
    String? reportedUserNameShort,
    int? disapprovedUserId,
    String? disapprovedUserNameShort,
    int? approvedUserId,
    String? approvedUserNameShort,
    int? teamLeaderId,
    String? teamLeaderNameShort,
    int? orderVisitAssetsAmount,
    String? dateStart,
    DateTime? dateStartDatetime,
    String? dateEnd,
    DateTime? dateEndDatetime,
    String? reportedDate,
    DateTime? reportedDateDatetime,
    String? disapprovedDate,
    DateTime? disapprovedDateDatetime,
    String? approvedDate,
    DateTime? approvedDateDatetime,
    bool? isCanceled,
    String? comments,
    int? orderCancelReasonId,
    String? orderCancelReasonDescription,
    double? priceServices,
    double? priceMaterials,
    double? priceVehicles,
    double? priceTotal,
    String? systemParentCode,
    String? systemCode,
    String? unitTypeParentCode,
    String? assetTagDescription,
    String? requestedServices,
    String? unitDescription,
    String? contractDescription,
    String? disapprovedNotes,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _orderId = orderId,
        _orderMask = orderMask,
        _orderTypeCode = orderTypeCode,
        _orderTypeSubCode = orderTypeSubCode,
        _orderStatusId = orderStatusId,
        _orderStatusDescription = orderStatusDescription,
        _orderParentId = orderParentId,
        _durationHours = durationHours,
        _statusId = statusId,
        _statusDescription = statusDescription,
        _processingId = processingId,
        _processingDescription = processingDescription,
        _reportedUserId = reportedUserId,
        _reportedUserNameShort = reportedUserNameShort,
        _disapprovedUserId = disapprovedUserId,
        _disapprovedUserNameShort = disapprovedUserNameShort,
        _approvedUserId = approvedUserId,
        _approvedUserNameShort = approvedUserNameShort,
        _teamLeaderId = teamLeaderId,
        _teamLeaderNameShort = teamLeaderNameShort,
        _orderVisitAssetsAmount = orderVisitAssetsAmount,
        _dateStart = dateStart,
        _dateStartDatetime = dateStartDatetime,
        _dateEnd = dateEnd,
        _dateEndDatetime = dateEndDatetime,
        _reportedDate = reportedDate,
        _reportedDateDatetime = reportedDateDatetime,
        _disapprovedDate = disapprovedDate,
        _disapprovedDateDatetime = disapprovedDateDatetime,
        _approvedDate = approvedDate,
        _approvedDateDatetime = approvedDateDatetime,
        _isCanceled = isCanceled,
        _comments = comments,
        _orderCancelReasonId = orderCancelReasonId,
        _orderCancelReasonDescription = orderCancelReasonDescription,
        _priceServices = priceServices,
        _priceMaterials = priceMaterials,
        _priceVehicles = priceVehicles,
        _priceTotal = priceTotal,
        _systemParentCode = systemParentCode,
        _systemCode = systemCode,
        _unitTypeParentCode = unitTypeParentCode,
        _assetTagDescription = assetTagDescription,
        _requestedServices = requestedServices,
        _unitDescription = unitDescription,
        _contractDescription = contractDescription,
        _disapprovedNotes = disapprovedNotes,
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

  // "orderMask" field.
  String? _orderMask;
  String get orderMask => _orderMask ?? '';
  set orderMask(String? val) => _orderMask = val;
  bool hasOrderMask() => _orderMask != null;

  // "orderTypeCode" field.
  String? _orderTypeCode;
  String get orderTypeCode => _orderTypeCode ?? '';
  set orderTypeCode(String? val) => _orderTypeCode = val;
  bool hasOrderTypeCode() => _orderTypeCode != null;

  // "orderTypeSubCode" field.
  String? _orderTypeSubCode;
  String get orderTypeSubCode => _orderTypeSubCode ?? '';
  set orderTypeSubCode(String? val) => _orderTypeSubCode = val;
  bool hasOrderTypeSubCode() => _orderTypeSubCode != null;

  // "orderStatusId" field.
  int? _orderStatusId;
  int get orderStatusId => _orderStatusId ?? 0;
  set orderStatusId(int? val) => _orderStatusId = val;
  void incrementOrderStatusId(int amount) =>
      _orderStatusId = orderStatusId + amount;
  bool hasOrderStatusId() => _orderStatusId != null;

  // "orderStatusDescription" field.
  String? _orderStatusDescription;
  String get orderStatusDescription => _orderStatusDescription ?? '';
  set orderStatusDescription(String? val) => _orderStatusDescription = val;
  bool hasOrderStatusDescription() => _orderStatusDescription != null;

  // "orderParentId" field.
  int? _orderParentId;
  int get orderParentId => _orderParentId ?? 0;
  set orderParentId(int? val) => _orderParentId = val;
  void incrementOrderParentId(int amount) =>
      _orderParentId = orderParentId + amount;
  bool hasOrderParentId() => _orderParentId != null;

  // "durationHours" field.
  double? _durationHours;
  double get durationHours => _durationHours ?? 0.0;
  set durationHours(double? val) => _durationHours = val;
  void incrementDurationHours(double amount) =>
      _durationHours = durationHours + amount;
  bool hasDurationHours() => _durationHours != null;

  // "statusId" field.
  int? _statusId;
  int get statusId => _statusId ?? 0;
  set statusId(int? val) => _statusId = val;
  void incrementStatusId(int amount) => _statusId = statusId + amount;
  bool hasStatusId() => _statusId != null;

  // "statusDescription" field.
  String? _statusDescription;
  String get statusDescription => _statusDescription ?? '';
  set statusDescription(String? val) => _statusDescription = val;
  bool hasStatusDescription() => _statusDescription != null;

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

  // "reportedUserId" field.
  int? _reportedUserId;
  int get reportedUserId => _reportedUserId ?? 0;
  set reportedUserId(int? val) => _reportedUserId = val;
  void incrementReportedUserId(int amount) =>
      _reportedUserId = reportedUserId + amount;
  bool hasReportedUserId() => _reportedUserId != null;

  // "reportedUserNameShort" field.
  String? _reportedUserNameShort;
  String get reportedUserNameShort => _reportedUserNameShort ?? '';
  set reportedUserNameShort(String? val) => _reportedUserNameShort = val;
  bool hasReportedUserNameShort() => _reportedUserNameShort != null;

  // "disapprovedUserId" field.
  int? _disapprovedUserId;
  int get disapprovedUserId => _disapprovedUserId ?? 0;
  set disapprovedUserId(int? val) => _disapprovedUserId = val;
  void incrementDisapprovedUserId(int amount) =>
      _disapprovedUserId = disapprovedUserId + amount;
  bool hasDisapprovedUserId() => _disapprovedUserId != null;

  // "disapprovedUserNameShort" field.
  String? _disapprovedUserNameShort;
  String get disapprovedUserNameShort => _disapprovedUserNameShort ?? '';
  set disapprovedUserNameShort(String? val) => _disapprovedUserNameShort = val;
  bool hasDisapprovedUserNameShort() => _disapprovedUserNameShort != null;

  // "approvedUserId" field.
  int? _approvedUserId;
  int get approvedUserId => _approvedUserId ?? 0;
  set approvedUserId(int? val) => _approvedUserId = val;
  void incrementApprovedUserId(int amount) =>
      _approvedUserId = approvedUserId + amount;
  bool hasApprovedUserId() => _approvedUserId != null;

  // "approvedUserNameShort" field.
  String? _approvedUserNameShort;
  String get approvedUserNameShort => _approvedUserNameShort ?? '';
  set approvedUserNameShort(String? val) => _approvedUserNameShort = val;
  bool hasApprovedUserNameShort() => _approvedUserNameShort != null;

  // "teamLeaderId" field.
  int? _teamLeaderId;
  int get teamLeaderId => _teamLeaderId ?? 0;
  set teamLeaderId(int? val) => _teamLeaderId = val;
  void incrementTeamLeaderId(int amount) =>
      _teamLeaderId = teamLeaderId + amount;
  bool hasTeamLeaderId() => _teamLeaderId != null;

  // "teamLeaderNameShort" field.
  String? _teamLeaderNameShort;
  String get teamLeaderNameShort => _teamLeaderNameShort ?? '';
  set teamLeaderNameShort(String? val) => _teamLeaderNameShort = val;
  bool hasTeamLeaderNameShort() => _teamLeaderNameShort != null;

  // "orderVisitAssetsAmount" field.
  int? _orderVisitAssetsAmount;
  int get orderVisitAssetsAmount => _orderVisitAssetsAmount ?? 0;
  set orderVisitAssetsAmount(int? val) => _orderVisitAssetsAmount = val;
  void incrementOrderVisitAssetsAmount(int amount) =>
      _orderVisitAssetsAmount = orderVisitAssetsAmount + amount;
  bool hasOrderVisitAssetsAmount() => _orderVisitAssetsAmount != null;

  // "dateStart" field.
  String? _dateStart;
  String get dateStart => _dateStart ?? '';
  set dateStart(String? val) => _dateStart = val;
  bool hasDateStart() => _dateStart != null;

  // "dateStartDatetime" field.
  DateTime? _dateStartDatetime;
  DateTime? get dateStartDatetime => _dateStartDatetime;
  set dateStartDatetime(DateTime? val) => _dateStartDatetime = val;
  bool hasDateStartDatetime() => _dateStartDatetime != null;

  // "dateEnd" field.
  String? _dateEnd;
  String get dateEnd => _dateEnd ?? '';
  set dateEnd(String? val) => _dateEnd = val;
  bool hasDateEnd() => _dateEnd != null;

  // "dateEndDatetime" field.
  DateTime? _dateEndDatetime;
  DateTime? get dateEndDatetime => _dateEndDatetime;
  set dateEndDatetime(DateTime? val) => _dateEndDatetime = val;
  bool hasDateEndDatetime() => _dateEndDatetime != null;

  // "reportedDate" field.
  String? _reportedDate;
  String get reportedDate => _reportedDate ?? '';
  set reportedDate(String? val) => _reportedDate = val;
  bool hasReportedDate() => _reportedDate != null;

  // "reportedDateDatetime" field.
  DateTime? _reportedDateDatetime;
  DateTime? get reportedDateDatetime => _reportedDateDatetime;
  set reportedDateDatetime(DateTime? val) => _reportedDateDatetime = val;
  bool hasReportedDateDatetime() => _reportedDateDatetime != null;

  // "disapprovedDate" field.
  String? _disapprovedDate;
  String get disapprovedDate => _disapprovedDate ?? '';
  set disapprovedDate(String? val) => _disapprovedDate = val;
  bool hasDisapprovedDate() => _disapprovedDate != null;

  // "disapprovedDateDatetime" field.
  DateTime? _disapprovedDateDatetime;
  DateTime? get disapprovedDateDatetime => _disapprovedDateDatetime;
  set disapprovedDateDatetime(DateTime? val) => _disapprovedDateDatetime = val;
  bool hasDisapprovedDateDatetime() => _disapprovedDateDatetime != null;

  // "approvedDate" field.
  String? _approvedDate;
  String get approvedDate => _approvedDate ?? '';
  set approvedDate(String? val) => _approvedDate = val;
  bool hasApprovedDate() => _approvedDate != null;

  // "approvedDateDatetime" field.
  DateTime? _approvedDateDatetime;
  DateTime? get approvedDateDatetime => _approvedDateDatetime;
  set approvedDateDatetime(DateTime? val) => _approvedDateDatetime = val;
  bool hasApprovedDateDatetime() => _approvedDateDatetime != null;

  // "isCanceled" field.
  bool? _isCanceled;
  bool get isCanceled => _isCanceled ?? false;
  set isCanceled(bool? val) => _isCanceled = val;
  bool hasIsCanceled() => _isCanceled != null;

  // "comments" field.
  String? _comments;
  String get comments => _comments ?? '';
  set comments(String? val) => _comments = val;
  bool hasComments() => _comments != null;

  // "orderCancelReasonId" field.
  int? _orderCancelReasonId;
  int get orderCancelReasonId => _orderCancelReasonId ?? 0;
  set orderCancelReasonId(int? val) => _orderCancelReasonId = val;
  void incrementOrderCancelReasonId(int amount) =>
      _orderCancelReasonId = orderCancelReasonId + amount;
  bool hasOrderCancelReasonId() => _orderCancelReasonId != null;

  // "orderCancelReasonDescription" field.
  String? _orderCancelReasonDescription;
  String get orderCancelReasonDescription =>
      _orderCancelReasonDescription ?? '';
  set orderCancelReasonDescription(String? val) =>
      _orderCancelReasonDescription = val;
  bool hasOrderCancelReasonDescription() =>
      _orderCancelReasonDescription != null;

  // "priceServices" field.
  double? _priceServices;
  double get priceServices => _priceServices ?? 0.0;
  set priceServices(double? val) => _priceServices = val;
  void incrementPriceServices(double amount) =>
      _priceServices = priceServices + amount;
  bool hasPriceServices() => _priceServices != null;

  // "priceMaterials" field.
  double? _priceMaterials;
  double get priceMaterials => _priceMaterials ?? 0.0;
  set priceMaterials(double? val) => _priceMaterials = val;
  void incrementPriceMaterials(double amount) =>
      _priceMaterials = priceMaterials + amount;
  bool hasPriceMaterials() => _priceMaterials != null;

  // "priceVehicles" field.
  double? _priceVehicles;
  double get priceVehicles => _priceVehicles ?? 0.0;
  set priceVehicles(double? val) => _priceVehicles = val;
  void incrementPriceVehicles(double amount) =>
      _priceVehicles = priceVehicles + amount;
  bool hasPriceVehicles() => _priceVehicles != null;

  // "priceTotal" field.
  double? _priceTotal;
  double get priceTotal => _priceTotal ?? 0.0;
  set priceTotal(double? val) => _priceTotal = val;
  void incrementPriceTotal(double amount) => _priceTotal = priceTotal + amount;
  bool hasPriceTotal() => _priceTotal != null;

  // "systemParentCode" field.
  String? _systemParentCode;
  String get systemParentCode => _systemParentCode ?? '';
  set systemParentCode(String? val) => _systemParentCode = val;
  bool hasSystemParentCode() => _systemParentCode != null;

  // "systemCode" field.
  String? _systemCode;
  String get systemCode => _systemCode ?? '';
  set systemCode(String? val) => _systemCode = val;
  bool hasSystemCode() => _systemCode != null;

  // "unitTypeParentCode" field.
  String? _unitTypeParentCode;
  String get unitTypeParentCode => _unitTypeParentCode ?? '';
  set unitTypeParentCode(String? val) => _unitTypeParentCode = val;
  bool hasUnitTypeParentCode() => _unitTypeParentCode != null;

  // "assetTagDescription" field.
  String? _assetTagDescription;
  String get assetTagDescription => _assetTagDescription ?? '';
  set assetTagDescription(String? val) => _assetTagDescription = val;
  bool hasAssetTagDescription() => _assetTagDescription != null;

  // "requestedServices" field.
  String? _requestedServices;
  String get requestedServices => _requestedServices ?? '';
  set requestedServices(String? val) => _requestedServices = val;
  bool hasRequestedServices() => _requestedServices != null;

  // "unitDescription" field.
  String? _unitDescription;
  String get unitDescription => _unitDescription ?? '';
  set unitDescription(String? val) => _unitDescription = val;
  bool hasUnitDescription() => _unitDescription != null;

  // "contractDescription" field.
  String? _contractDescription;
  String get contractDescription => _contractDescription ?? '';
  set contractDescription(String? val) => _contractDescription = val;
  bool hasContractDescription() => _contractDescription != null;

  // "disapprovedNotes" field.
  String? _disapprovedNotes;
  String get disapprovedNotes => _disapprovedNotes ?? '';
  set disapprovedNotes(String? val) => _disapprovedNotes = val;
  bool hasDisapprovedNotes() => _disapprovedNotes != null;

  static DtVOrderVisitStruct fromMap(Map<String, dynamic> data) =>
      DtVOrderVisitStruct(
        id: castToType<int>(data['id']),
        orderId: castToType<int>(data['orderId']),
        orderMask: data['orderMask'] as String?,
        orderTypeCode: data['orderTypeCode'] as String?,
        orderTypeSubCode: data['orderTypeSubCode'] as String?,
        orderStatusId: castToType<int>(data['orderStatusId']),
        orderStatusDescription: data['orderStatusDescription'] as String?,
        orderParentId: castToType<int>(data['orderParentId']),
        durationHours: castToType<double>(data['durationHours']),
        statusId: castToType<int>(data['statusId']),
        statusDescription: data['statusDescription'] as String?,
        processingId: castToType<int>(data['processingId']),
        processingDescription: data['processingDescription'] as String?,
        reportedUserId: castToType<int>(data['reportedUserId']),
        reportedUserNameShort: data['reportedUserNameShort'] as String?,
        disapprovedUserId: castToType<int>(data['disapprovedUserId']),
        disapprovedUserNameShort: data['disapprovedUserNameShort'] as String?,
        approvedUserId: castToType<int>(data['approvedUserId']),
        approvedUserNameShort: data['approvedUserNameShort'] as String?,
        teamLeaderId: castToType<int>(data['teamLeaderId']),
        teamLeaderNameShort: data['teamLeaderNameShort'] as String?,
        orderVisitAssetsAmount: castToType<int>(data['orderVisitAssetsAmount']),
        dateStart: data['dateStart'] as String?,
        dateStartDatetime: data['dateStartDatetime'] as DateTime?,
        dateEnd: data['dateEnd'] as String?,
        dateEndDatetime: data['dateEndDatetime'] as DateTime?,
        reportedDate: data['reportedDate'] as String?,
        reportedDateDatetime: data['reportedDateDatetime'] as DateTime?,
        disapprovedDate: data['disapprovedDate'] as String?,
        disapprovedDateDatetime: data['disapprovedDateDatetime'] as DateTime?,
        approvedDate: data['approvedDate'] as String?,
        approvedDateDatetime: data['approvedDateDatetime'] as DateTime?,
        isCanceled: data['isCanceled'] as bool?,
        comments: data['comments'] as String?,
        orderCancelReasonId: castToType<int>(data['orderCancelReasonId']),
        orderCancelReasonDescription:
            data['orderCancelReasonDescription'] as String?,
        priceServices: castToType<double>(data['priceServices']),
        priceMaterials: castToType<double>(data['priceMaterials']),
        priceVehicles: castToType<double>(data['priceVehicles']),
        priceTotal: castToType<double>(data['priceTotal']),
        systemParentCode: data['systemParentCode'] as String?,
        systemCode: data['systemCode'] as String?,
        unitTypeParentCode: data['unitTypeParentCode'] as String?,
        assetTagDescription: data['assetTagDescription'] as String?,
        requestedServices: data['requestedServices'] as String?,
        unitDescription: data['unitDescription'] as String?,
        contractDescription: data['contractDescription'] as String?,
        disapprovedNotes: data['disapprovedNotes'] as String?,
      );

  static DtVOrderVisitStruct? maybeFromMap(dynamic data) => data is Map
      ? DtVOrderVisitStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'orderId': _orderId,
        'orderMask': _orderMask,
        'orderTypeCode': _orderTypeCode,
        'orderTypeSubCode': _orderTypeSubCode,
        'orderStatusId': _orderStatusId,
        'orderStatusDescription': _orderStatusDescription,
        'orderParentId': _orderParentId,
        'durationHours': _durationHours,
        'statusId': _statusId,
        'statusDescription': _statusDescription,
        'processingId': _processingId,
        'processingDescription': _processingDescription,
        'reportedUserId': _reportedUserId,
        'reportedUserNameShort': _reportedUserNameShort,
        'disapprovedUserId': _disapprovedUserId,
        'disapprovedUserNameShort': _disapprovedUserNameShort,
        'approvedUserId': _approvedUserId,
        'approvedUserNameShort': _approvedUserNameShort,
        'teamLeaderId': _teamLeaderId,
        'teamLeaderNameShort': _teamLeaderNameShort,
        'orderVisitAssetsAmount': _orderVisitAssetsAmount,
        'dateStart': _dateStart,
        'dateStartDatetime': _dateStartDatetime,
        'dateEnd': _dateEnd,
        'dateEndDatetime': _dateEndDatetime,
        'reportedDate': _reportedDate,
        'reportedDateDatetime': _reportedDateDatetime,
        'disapprovedDate': _disapprovedDate,
        'disapprovedDateDatetime': _disapprovedDateDatetime,
        'approvedDate': _approvedDate,
        'approvedDateDatetime': _approvedDateDatetime,
        'isCanceled': _isCanceled,
        'comments': _comments,
        'orderCancelReasonId': _orderCancelReasonId,
        'orderCancelReasonDescription': _orderCancelReasonDescription,
        'priceServices': _priceServices,
        'priceMaterials': _priceMaterials,
        'priceVehicles': _priceVehicles,
        'priceTotal': _priceTotal,
        'systemParentCode': _systemParentCode,
        'systemCode': _systemCode,
        'unitTypeParentCode': _unitTypeParentCode,
        'assetTagDescription': _assetTagDescription,
        'requestedServices': _requestedServices,
        'unitDescription': _unitDescription,
        'contractDescription': _contractDescription,
        'disapprovedNotes': _disapprovedNotes,
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
        'orderMask': serializeParam(
          _orderMask,
          ParamType.String,
        ),
        'orderTypeCode': serializeParam(
          _orderTypeCode,
          ParamType.String,
        ),
        'orderTypeSubCode': serializeParam(
          _orderTypeSubCode,
          ParamType.String,
        ),
        'orderStatusId': serializeParam(
          _orderStatusId,
          ParamType.int,
        ),
        'orderStatusDescription': serializeParam(
          _orderStatusDescription,
          ParamType.String,
        ),
        'orderParentId': serializeParam(
          _orderParentId,
          ParamType.int,
        ),
        'durationHours': serializeParam(
          _durationHours,
          ParamType.double,
        ),
        'statusId': serializeParam(
          _statusId,
          ParamType.int,
        ),
        'statusDescription': serializeParam(
          _statusDescription,
          ParamType.String,
        ),
        'processingId': serializeParam(
          _processingId,
          ParamType.int,
        ),
        'processingDescription': serializeParam(
          _processingDescription,
          ParamType.String,
        ),
        'reportedUserId': serializeParam(
          _reportedUserId,
          ParamType.int,
        ),
        'reportedUserNameShort': serializeParam(
          _reportedUserNameShort,
          ParamType.String,
        ),
        'disapprovedUserId': serializeParam(
          _disapprovedUserId,
          ParamType.int,
        ),
        'disapprovedUserNameShort': serializeParam(
          _disapprovedUserNameShort,
          ParamType.String,
        ),
        'approvedUserId': serializeParam(
          _approvedUserId,
          ParamType.int,
        ),
        'approvedUserNameShort': serializeParam(
          _approvedUserNameShort,
          ParamType.String,
        ),
        'teamLeaderId': serializeParam(
          _teamLeaderId,
          ParamType.int,
        ),
        'teamLeaderNameShort': serializeParam(
          _teamLeaderNameShort,
          ParamType.String,
        ),
        'orderVisitAssetsAmount': serializeParam(
          _orderVisitAssetsAmount,
          ParamType.int,
        ),
        'dateStart': serializeParam(
          _dateStart,
          ParamType.String,
        ),
        'dateStartDatetime': serializeParam(
          _dateStartDatetime,
          ParamType.DateTime,
        ),
        'dateEnd': serializeParam(
          _dateEnd,
          ParamType.String,
        ),
        'dateEndDatetime': serializeParam(
          _dateEndDatetime,
          ParamType.DateTime,
        ),
        'reportedDate': serializeParam(
          _reportedDate,
          ParamType.String,
        ),
        'reportedDateDatetime': serializeParam(
          _reportedDateDatetime,
          ParamType.DateTime,
        ),
        'disapprovedDate': serializeParam(
          _disapprovedDate,
          ParamType.String,
        ),
        'disapprovedDateDatetime': serializeParam(
          _disapprovedDateDatetime,
          ParamType.DateTime,
        ),
        'approvedDate': serializeParam(
          _approvedDate,
          ParamType.String,
        ),
        'approvedDateDatetime': serializeParam(
          _approvedDateDatetime,
          ParamType.DateTime,
        ),
        'isCanceled': serializeParam(
          _isCanceled,
          ParamType.bool,
        ),
        'comments': serializeParam(
          _comments,
          ParamType.String,
        ),
        'orderCancelReasonId': serializeParam(
          _orderCancelReasonId,
          ParamType.int,
        ),
        'orderCancelReasonDescription': serializeParam(
          _orderCancelReasonDescription,
          ParamType.String,
        ),
        'priceServices': serializeParam(
          _priceServices,
          ParamType.double,
        ),
        'priceMaterials': serializeParam(
          _priceMaterials,
          ParamType.double,
        ),
        'priceVehicles': serializeParam(
          _priceVehicles,
          ParamType.double,
        ),
        'priceTotal': serializeParam(
          _priceTotal,
          ParamType.double,
        ),
        'systemParentCode': serializeParam(
          _systemParentCode,
          ParamType.String,
        ),
        'systemCode': serializeParam(
          _systemCode,
          ParamType.String,
        ),
        'unitTypeParentCode': serializeParam(
          _unitTypeParentCode,
          ParamType.String,
        ),
        'assetTagDescription': serializeParam(
          _assetTagDescription,
          ParamType.String,
        ),
        'requestedServices': serializeParam(
          _requestedServices,
          ParamType.String,
        ),
        'unitDescription': serializeParam(
          _unitDescription,
          ParamType.String,
        ),
        'contractDescription': serializeParam(
          _contractDescription,
          ParamType.String,
        ),
        'disapprovedNotes': serializeParam(
          _disapprovedNotes,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtVOrderVisitStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtVOrderVisitStruct(
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
        orderMask: deserializeParam(
          data['orderMask'],
          ParamType.String,
          false,
        ),
        orderTypeCode: deserializeParam(
          data['orderTypeCode'],
          ParamType.String,
          false,
        ),
        orderTypeSubCode: deserializeParam(
          data['orderTypeSubCode'],
          ParamType.String,
          false,
        ),
        orderStatusId: deserializeParam(
          data['orderStatusId'],
          ParamType.int,
          false,
        ),
        orderStatusDescription: deserializeParam(
          data['orderStatusDescription'],
          ParamType.String,
          false,
        ),
        orderParentId: deserializeParam(
          data['orderParentId'],
          ParamType.int,
          false,
        ),
        durationHours: deserializeParam(
          data['durationHours'],
          ParamType.double,
          false,
        ),
        statusId: deserializeParam(
          data['statusId'],
          ParamType.int,
          false,
        ),
        statusDescription: deserializeParam(
          data['statusDescription'],
          ParamType.String,
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
        reportedUserId: deserializeParam(
          data['reportedUserId'],
          ParamType.int,
          false,
        ),
        reportedUserNameShort: deserializeParam(
          data['reportedUserNameShort'],
          ParamType.String,
          false,
        ),
        disapprovedUserId: deserializeParam(
          data['disapprovedUserId'],
          ParamType.int,
          false,
        ),
        disapprovedUserNameShort: deserializeParam(
          data['disapprovedUserNameShort'],
          ParamType.String,
          false,
        ),
        approvedUserId: deserializeParam(
          data['approvedUserId'],
          ParamType.int,
          false,
        ),
        approvedUserNameShort: deserializeParam(
          data['approvedUserNameShort'],
          ParamType.String,
          false,
        ),
        teamLeaderId: deserializeParam(
          data['teamLeaderId'],
          ParamType.int,
          false,
        ),
        teamLeaderNameShort: deserializeParam(
          data['teamLeaderNameShort'],
          ParamType.String,
          false,
        ),
        orderVisitAssetsAmount: deserializeParam(
          data['orderVisitAssetsAmount'],
          ParamType.int,
          false,
        ),
        dateStart: deserializeParam(
          data['dateStart'],
          ParamType.String,
          false,
        ),
        dateStartDatetime: deserializeParam(
          data['dateStartDatetime'],
          ParamType.DateTime,
          false,
        ),
        dateEnd: deserializeParam(
          data['dateEnd'],
          ParamType.String,
          false,
        ),
        dateEndDatetime: deserializeParam(
          data['dateEndDatetime'],
          ParamType.DateTime,
          false,
        ),
        reportedDate: deserializeParam(
          data['reportedDate'],
          ParamType.String,
          false,
        ),
        reportedDateDatetime: deserializeParam(
          data['reportedDateDatetime'],
          ParamType.DateTime,
          false,
        ),
        disapprovedDate: deserializeParam(
          data['disapprovedDate'],
          ParamType.String,
          false,
        ),
        disapprovedDateDatetime: deserializeParam(
          data['disapprovedDateDatetime'],
          ParamType.DateTime,
          false,
        ),
        approvedDate: deserializeParam(
          data['approvedDate'],
          ParamType.String,
          false,
        ),
        approvedDateDatetime: deserializeParam(
          data['approvedDateDatetime'],
          ParamType.DateTime,
          false,
        ),
        isCanceled: deserializeParam(
          data['isCanceled'],
          ParamType.bool,
          false,
        ),
        comments: deserializeParam(
          data['comments'],
          ParamType.String,
          false,
        ),
        orderCancelReasonId: deserializeParam(
          data['orderCancelReasonId'],
          ParamType.int,
          false,
        ),
        orderCancelReasonDescription: deserializeParam(
          data['orderCancelReasonDescription'],
          ParamType.String,
          false,
        ),
        priceServices: deserializeParam(
          data['priceServices'],
          ParamType.double,
          false,
        ),
        priceMaterials: deserializeParam(
          data['priceMaterials'],
          ParamType.double,
          false,
        ),
        priceVehicles: deserializeParam(
          data['priceVehicles'],
          ParamType.double,
          false,
        ),
        priceTotal: deserializeParam(
          data['priceTotal'],
          ParamType.double,
          false,
        ),
        systemParentCode: deserializeParam(
          data['systemParentCode'],
          ParamType.String,
          false,
        ),
        systemCode: deserializeParam(
          data['systemCode'],
          ParamType.String,
          false,
        ),
        unitTypeParentCode: deserializeParam(
          data['unitTypeParentCode'],
          ParamType.String,
          false,
        ),
        assetTagDescription: deserializeParam(
          data['assetTagDescription'],
          ParamType.String,
          false,
        ),
        requestedServices: deserializeParam(
          data['requestedServices'],
          ParamType.String,
          false,
        ),
        unitDescription: deserializeParam(
          data['unitDescription'],
          ParamType.String,
          false,
        ),
        contractDescription: deserializeParam(
          data['contractDescription'],
          ParamType.String,
          false,
        ),
        disapprovedNotes: deserializeParam(
          data['disapprovedNotes'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtVOrderVisitStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtVOrderVisitStruct &&
        id == other.id &&
        orderId == other.orderId &&
        orderMask == other.orderMask &&
        orderTypeCode == other.orderTypeCode &&
        orderTypeSubCode == other.orderTypeSubCode &&
        orderStatusId == other.orderStatusId &&
        orderStatusDescription == other.orderStatusDescription &&
        orderParentId == other.orderParentId &&
        durationHours == other.durationHours &&
        statusId == other.statusId &&
        statusDescription == other.statusDescription &&
        processingId == other.processingId &&
        processingDescription == other.processingDescription &&
        reportedUserId == other.reportedUserId &&
        reportedUserNameShort == other.reportedUserNameShort &&
        disapprovedUserId == other.disapprovedUserId &&
        disapprovedUserNameShort == other.disapprovedUserNameShort &&
        approvedUserId == other.approvedUserId &&
        approvedUserNameShort == other.approvedUserNameShort &&
        teamLeaderId == other.teamLeaderId &&
        teamLeaderNameShort == other.teamLeaderNameShort &&
        orderVisitAssetsAmount == other.orderVisitAssetsAmount &&
        dateStart == other.dateStart &&
        dateStartDatetime == other.dateStartDatetime &&
        dateEnd == other.dateEnd &&
        dateEndDatetime == other.dateEndDatetime &&
        reportedDate == other.reportedDate &&
        reportedDateDatetime == other.reportedDateDatetime &&
        disapprovedDate == other.disapprovedDate &&
        disapprovedDateDatetime == other.disapprovedDateDatetime &&
        approvedDate == other.approvedDate &&
        approvedDateDatetime == other.approvedDateDatetime &&
        isCanceled == other.isCanceled &&
        comments == other.comments &&
        orderCancelReasonId == other.orderCancelReasonId &&
        orderCancelReasonDescription == other.orderCancelReasonDescription &&
        priceServices == other.priceServices &&
        priceMaterials == other.priceMaterials &&
        priceVehicles == other.priceVehicles &&
        priceTotal == other.priceTotal &&
        systemParentCode == other.systemParentCode &&
        systemCode == other.systemCode &&
        unitTypeParentCode == other.unitTypeParentCode &&
        assetTagDescription == other.assetTagDescription &&
        requestedServices == other.requestedServices &&
        unitDescription == other.unitDescription &&
        contractDescription == other.contractDescription &&
        disapprovedNotes == other.disapprovedNotes;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        orderId,
        orderMask,
        orderTypeCode,
        orderTypeSubCode,
        orderStatusId,
        orderStatusDescription,
        orderParentId,
        durationHours,
        statusId,
        statusDescription,
        processingId,
        processingDescription,
        reportedUserId,
        reportedUserNameShort,
        disapprovedUserId,
        disapprovedUserNameShort,
        approvedUserId,
        approvedUserNameShort,
        teamLeaderId,
        teamLeaderNameShort,
        orderVisitAssetsAmount,
        dateStart,
        dateStartDatetime,
        dateEnd,
        dateEndDatetime,
        reportedDate,
        reportedDateDatetime,
        disapprovedDate,
        disapprovedDateDatetime,
        approvedDate,
        approvedDateDatetime,
        isCanceled,
        comments,
        orderCancelReasonId,
        orderCancelReasonDescription,
        priceServices,
        priceMaterials,
        priceVehicles,
        priceTotal,
        systemParentCode,
        systemCode,
        unitTypeParentCode,
        assetTagDescription,
        requestedServices,
        unitDescription,
        contractDescription,
        disapprovedNotes
      ]);
}

DtVOrderVisitStruct createDtVOrderVisitStruct({
  int? id,
  int? orderId,
  String? orderMask,
  String? orderTypeCode,
  String? orderTypeSubCode,
  int? orderStatusId,
  String? orderStatusDescription,
  int? orderParentId,
  double? durationHours,
  int? statusId,
  String? statusDescription,
  int? processingId,
  String? processingDescription,
  int? reportedUserId,
  String? reportedUserNameShort,
  int? disapprovedUserId,
  String? disapprovedUserNameShort,
  int? approvedUserId,
  String? approvedUserNameShort,
  int? teamLeaderId,
  String? teamLeaderNameShort,
  int? orderVisitAssetsAmount,
  String? dateStart,
  DateTime? dateStartDatetime,
  String? dateEnd,
  DateTime? dateEndDatetime,
  String? reportedDate,
  DateTime? reportedDateDatetime,
  String? disapprovedDate,
  DateTime? disapprovedDateDatetime,
  String? approvedDate,
  DateTime? approvedDateDatetime,
  bool? isCanceled,
  String? comments,
  int? orderCancelReasonId,
  String? orderCancelReasonDescription,
  double? priceServices,
  double? priceMaterials,
  double? priceVehicles,
  double? priceTotal,
  String? systemParentCode,
  String? systemCode,
  String? unitTypeParentCode,
  String? assetTagDescription,
  String? requestedServices,
  String? unitDescription,
  String? contractDescription,
  String? disapprovedNotes,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtVOrderVisitStruct(
      id: id,
      orderId: orderId,
      orderMask: orderMask,
      orderTypeCode: orderTypeCode,
      orderTypeSubCode: orderTypeSubCode,
      orderStatusId: orderStatusId,
      orderStatusDescription: orderStatusDescription,
      orderParentId: orderParentId,
      durationHours: durationHours,
      statusId: statusId,
      statusDescription: statusDescription,
      processingId: processingId,
      processingDescription: processingDescription,
      reportedUserId: reportedUserId,
      reportedUserNameShort: reportedUserNameShort,
      disapprovedUserId: disapprovedUserId,
      disapprovedUserNameShort: disapprovedUserNameShort,
      approvedUserId: approvedUserId,
      approvedUserNameShort: approvedUserNameShort,
      teamLeaderId: teamLeaderId,
      teamLeaderNameShort: teamLeaderNameShort,
      orderVisitAssetsAmount: orderVisitAssetsAmount,
      dateStart: dateStart,
      dateStartDatetime: dateStartDatetime,
      dateEnd: dateEnd,
      dateEndDatetime: dateEndDatetime,
      reportedDate: reportedDate,
      reportedDateDatetime: reportedDateDatetime,
      disapprovedDate: disapprovedDate,
      disapprovedDateDatetime: disapprovedDateDatetime,
      approvedDate: approvedDate,
      approvedDateDatetime: approvedDateDatetime,
      isCanceled: isCanceled,
      comments: comments,
      orderCancelReasonId: orderCancelReasonId,
      orderCancelReasonDescription: orderCancelReasonDescription,
      priceServices: priceServices,
      priceMaterials: priceMaterials,
      priceVehicles: priceVehicles,
      priceTotal: priceTotal,
      systemParentCode: systemParentCode,
      systemCode: systemCode,
      unitTypeParentCode: unitTypeParentCode,
      assetTagDescription: assetTagDescription,
      requestedServices: requestedServices,
      unitDescription: unitDescription,
      contractDescription: contractDescription,
      disapprovedNotes: disapprovedNotes,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtVOrderVisitStruct? updateDtVOrderVisitStruct(
  DtVOrderVisitStruct? dtVOrderVisit, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtVOrderVisit
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtVOrderVisitStructData(
  Map<String, dynamic> firestoreData,
  DtVOrderVisitStruct? dtVOrderVisit,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtVOrderVisit == null) {
    return;
  }
  if (dtVOrderVisit.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtVOrderVisit.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtVOrderVisitData =
      getDtVOrderVisitFirestoreData(dtVOrderVisit, forFieldValue);
  final nestedData =
      dtVOrderVisitData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dtVOrderVisit.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtVOrderVisitFirestoreData(
  DtVOrderVisitStruct? dtVOrderVisit, [
  bool forFieldValue = false,
]) {
  if (dtVOrderVisit == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtVOrderVisit.toMap());

  // Add any Firestore field values
  dtVOrderVisit.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtVOrderVisitListFirestoreData(
  List<DtVOrderVisitStruct>? dtVOrderVisits,
) =>
    dtVOrderVisits
        ?.map((e) => getDtVOrderVisitFirestoreData(e, true))
        .toList() ??
    [];

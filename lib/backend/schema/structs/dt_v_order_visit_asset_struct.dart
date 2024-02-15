// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtVOrderVisitAssetStruct extends FFFirebaseStruct {
  DtVOrderVisitAssetStruct({
    int? id,
    int? orderVisitId,
    int? assetId,
    String? code,
    String? description,
    bool? isMoved,
    String? movedComments,
    int? beforeUnitId,
    String? beforeUnitDescription,
    double? beforeUnitLatitude,
    double? beforeUnitLongitude,
    int? beforeTagId,
    String? beforeTagDescription,
    int? beforeTagSubId,
    String? beforeTagSubDescription,
    int? beforeStatusId,
    String? beforeStatusDescription,
    String? beforeComments,
    String? beforeImgFilePath,
    String? beforeImgFileName,
    int? beforeRecord,
    double? beforeLatitude,
    double? beforeLongitude,
    int? afterUnitId,
    String? afterUnitDescription,
    double? afterUnitLatitude,
    double? afterUnitLongitude,
    int? afterTagId,
    String? afterTagDescription,
    int? afterTagSubId,
    String? afterTagSubDescription,
    int? afterStatusId,
    String? afterStatusDescription,
    String? afterComments,
    String? afterImgFilePath,
    String? afterImgFileName,
    int? afterRecord,
    double? afterLatitude,
    double? afterLongitude,
    int? processingId,
    String? processingDescription,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _orderVisitId = orderVisitId,
        _assetId = assetId,
        _code = code,
        _description = description,
        _isMoved = isMoved,
        _movedComments = movedComments,
        _beforeUnitId = beforeUnitId,
        _beforeUnitDescription = beforeUnitDescription,
        _beforeUnitLatitude = beforeUnitLatitude,
        _beforeUnitLongitude = beforeUnitLongitude,
        _beforeTagId = beforeTagId,
        _beforeTagDescription = beforeTagDescription,
        _beforeTagSubId = beforeTagSubId,
        _beforeTagSubDescription = beforeTagSubDescription,
        _beforeStatusId = beforeStatusId,
        _beforeStatusDescription = beforeStatusDescription,
        _beforeComments = beforeComments,
        _beforeImgFilePath = beforeImgFilePath,
        _beforeImgFileName = beforeImgFileName,
        _beforeRecord = beforeRecord,
        _beforeLatitude = beforeLatitude,
        _beforeLongitude = beforeLongitude,
        _afterUnitId = afterUnitId,
        _afterUnitDescription = afterUnitDescription,
        _afterUnitLatitude = afterUnitLatitude,
        _afterUnitLongitude = afterUnitLongitude,
        _afterTagId = afterTagId,
        _afterTagDescription = afterTagDescription,
        _afterTagSubId = afterTagSubId,
        _afterTagSubDescription = afterTagSubDescription,
        _afterStatusId = afterStatusId,
        _afterStatusDescription = afterStatusDescription,
        _afterComments = afterComments,
        _afterImgFilePath = afterImgFilePath,
        _afterImgFileName = afterImgFileName,
        _afterRecord = afterRecord,
        _afterLatitude = afterLatitude,
        _afterLongitude = afterLongitude,
        _processingId = processingId,
        _processingDescription = processingDescription,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "orderVisitId" field.
  int? _orderVisitId;
  int get orderVisitId => _orderVisitId ?? 0;
  set orderVisitId(int? val) => _orderVisitId = val;
  void incrementOrderVisitId(int amount) =>
      _orderVisitId = orderVisitId + amount;
  bool hasOrderVisitId() => _orderVisitId != null;

  // "assetId" field.
  int? _assetId;
  int get assetId => _assetId ?? 0;
  set assetId(int? val) => _assetId = val;
  void incrementAssetId(int amount) => _assetId = assetId + amount;
  bool hasAssetId() => _assetId != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;
  bool hasCode() => _code != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "isMoved" field.
  bool? _isMoved;
  bool get isMoved => _isMoved ?? false;
  set isMoved(bool? val) => _isMoved = val;
  bool hasIsMoved() => _isMoved != null;

  // "movedComments" field.
  String? _movedComments;
  String get movedComments => _movedComments ?? '';
  set movedComments(String? val) => _movedComments = val;
  bool hasMovedComments() => _movedComments != null;

  // "beforeUnitId" field.
  int? _beforeUnitId;
  int get beforeUnitId => _beforeUnitId ?? 0;
  set beforeUnitId(int? val) => _beforeUnitId = val;
  void incrementBeforeUnitId(int amount) =>
      _beforeUnitId = beforeUnitId + amount;
  bool hasBeforeUnitId() => _beforeUnitId != null;

  // "beforeUnitDescription" field.
  String? _beforeUnitDescription;
  String get beforeUnitDescription => _beforeUnitDescription ?? '';
  set beforeUnitDescription(String? val) => _beforeUnitDescription = val;
  bool hasBeforeUnitDescription() => _beforeUnitDescription != null;

  // "beforeUnitLatitude" field.
  double? _beforeUnitLatitude;
  double get beforeUnitLatitude => _beforeUnitLatitude ?? 0.0;
  set beforeUnitLatitude(double? val) => _beforeUnitLatitude = val;
  void incrementBeforeUnitLatitude(double amount) =>
      _beforeUnitLatitude = beforeUnitLatitude + amount;
  bool hasBeforeUnitLatitude() => _beforeUnitLatitude != null;

  // "beforeUnitLongitude" field.
  double? _beforeUnitLongitude;
  double get beforeUnitLongitude => _beforeUnitLongitude ?? 0.0;
  set beforeUnitLongitude(double? val) => _beforeUnitLongitude = val;
  void incrementBeforeUnitLongitude(double amount) =>
      _beforeUnitLongitude = beforeUnitLongitude + amount;
  bool hasBeforeUnitLongitude() => _beforeUnitLongitude != null;

  // "beforeTagId" field.
  int? _beforeTagId;
  int get beforeTagId => _beforeTagId ?? 0;
  set beforeTagId(int? val) => _beforeTagId = val;
  void incrementBeforeTagId(int amount) => _beforeTagId = beforeTagId + amount;
  bool hasBeforeTagId() => _beforeTagId != null;

  // "beforeTagDescription" field.
  String? _beforeTagDescription;
  String get beforeTagDescription => _beforeTagDescription ?? '';
  set beforeTagDescription(String? val) => _beforeTagDescription = val;
  bool hasBeforeTagDescription() => _beforeTagDescription != null;

  // "beforeTagSubId" field.
  int? _beforeTagSubId;
  int get beforeTagSubId => _beforeTagSubId ?? 0;
  set beforeTagSubId(int? val) => _beforeTagSubId = val;
  void incrementBeforeTagSubId(int amount) =>
      _beforeTagSubId = beforeTagSubId + amount;
  bool hasBeforeTagSubId() => _beforeTagSubId != null;

  // "beforeTagSubDescription" field.
  String? _beforeTagSubDescription;
  String get beforeTagSubDescription => _beforeTagSubDescription ?? '';
  set beforeTagSubDescription(String? val) => _beforeTagSubDescription = val;
  bool hasBeforeTagSubDescription() => _beforeTagSubDescription != null;

  // "beforeStatusId" field.
  int? _beforeStatusId;
  int get beforeStatusId => _beforeStatusId ?? 0;
  set beforeStatusId(int? val) => _beforeStatusId = val;
  void incrementBeforeStatusId(int amount) =>
      _beforeStatusId = beforeStatusId + amount;
  bool hasBeforeStatusId() => _beforeStatusId != null;

  // "beforeStatusDescription" field.
  String? _beforeStatusDescription;
  String get beforeStatusDescription => _beforeStatusDescription ?? '';
  set beforeStatusDescription(String? val) => _beforeStatusDescription = val;
  bool hasBeforeStatusDescription() => _beforeStatusDescription != null;

  // "beforeComments" field.
  String? _beforeComments;
  String get beforeComments => _beforeComments ?? '';
  set beforeComments(String? val) => _beforeComments = val;
  bool hasBeforeComments() => _beforeComments != null;

  // "beforeImgFilePath" field.
  String? _beforeImgFilePath;
  String get beforeImgFilePath => _beforeImgFilePath ?? '';
  set beforeImgFilePath(String? val) => _beforeImgFilePath = val;
  bool hasBeforeImgFilePath() => _beforeImgFilePath != null;

  // "beforeImgFileName" field.
  String? _beforeImgFileName;
  String get beforeImgFileName => _beforeImgFileName ?? '';
  set beforeImgFileName(String? val) => _beforeImgFileName = val;
  bool hasBeforeImgFileName() => _beforeImgFileName != null;

  // "beforeRecord" field.
  int? _beforeRecord;
  int get beforeRecord => _beforeRecord ?? 0;
  set beforeRecord(int? val) => _beforeRecord = val;
  void incrementBeforeRecord(int amount) =>
      _beforeRecord = beforeRecord + amount;
  bool hasBeforeRecord() => _beforeRecord != null;

  // "beforeLatitude" field.
  double? _beforeLatitude;
  double get beforeLatitude => _beforeLatitude ?? 0.0;
  set beforeLatitude(double? val) => _beforeLatitude = val;
  void incrementBeforeLatitude(double amount) =>
      _beforeLatitude = beforeLatitude + amount;
  bool hasBeforeLatitude() => _beforeLatitude != null;

  // "beforeLongitude" field.
  double? _beforeLongitude;
  double get beforeLongitude => _beforeLongitude ?? 0.0;
  set beforeLongitude(double? val) => _beforeLongitude = val;
  void incrementBeforeLongitude(double amount) =>
      _beforeLongitude = beforeLongitude + amount;
  bool hasBeforeLongitude() => _beforeLongitude != null;

  // "afterUnitId" field.
  int? _afterUnitId;
  int get afterUnitId => _afterUnitId ?? 0;
  set afterUnitId(int? val) => _afterUnitId = val;
  void incrementAfterUnitId(int amount) => _afterUnitId = afterUnitId + amount;
  bool hasAfterUnitId() => _afterUnitId != null;

  // "afterUnitDescription" field.
  String? _afterUnitDescription;
  String get afterUnitDescription => _afterUnitDescription ?? '';
  set afterUnitDescription(String? val) => _afterUnitDescription = val;
  bool hasAfterUnitDescription() => _afterUnitDescription != null;

  // "afterUnitLatitude" field.
  double? _afterUnitLatitude;
  double get afterUnitLatitude => _afterUnitLatitude ?? 0.0;
  set afterUnitLatitude(double? val) => _afterUnitLatitude = val;
  void incrementAfterUnitLatitude(double amount) =>
      _afterUnitLatitude = afterUnitLatitude + amount;
  bool hasAfterUnitLatitude() => _afterUnitLatitude != null;

  // "afterUnitLongitude" field.
  double? _afterUnitLongitude;
  double get afterUnitLongitude => _afterUnitLongitude ?? 0.0;
  set afterUnitLongitude(double? val) => _afterUnitLongitude = val;
  void incrementAfterUnitLongitude(double amount) =>
      _afterUnitLongitude = afterUnitLongitude + amount;
  bool hasAfterUnitLongitude() => _afterUnitLongitude != null;

  // "afterTagId" field.
  int? _afterTagId;
  int get afterTagId => _afterTagId ?? 0;
  set afterTagId(int? val) => _afterTagId = val;
  void incrementAfterTagId(int amount) => _afterTagId = afterTagId + amount;
  bool hasAfterTagId() => _afterTagId != null;

  // "afterTagDescription" field.
  String? _afterTagDescription;
  String get afterTagDescription => _afterTagDescription ?? '';
  set afterTagDescription(String? val) => _afterTagDescription = val;
  bool hasAfterTagDescription() => _afterTagDescription != null;

  // "afterTagSubId" field.
  int? _afterTagSubId;
  int get afterTagSubId => _afterTagSubId ?? 0;
  set afterTagSubId(int? val) => _afterTagSubId = val;
  void incrementAfterTagSubId(int amount) =>
      _afterTagSubId = afterTagSubId + amount;
  bool hasAfterTagSubId() => _afterTagSubId != null;

  // "afterTagSubDescription" field.
  String? _afterTagSubDescription;
  String get afterTagSubDescription => _afterTagSubDescription ?? '';
  set afterTagSubDescription(String? val) => _afterTagSubDescription = val;
  bool hasAfterTagSubDescription() => _afterTagSubDescription != null;

  // "afterStatusId" field.
  int? _afterStatusId;
  int get afterStatusId => _afterStatusId ?? 0;
  set afterStatusId(int? val) => _afterStatusId = val;
  void incrementAfterStatusId(int amount) =>
      _afterStatusId = afterStatusId + amount;
  bool hasAfterStatusId() => _afterStatusId != null;

  // "afterStatusDescription" field.
  String? _afterStatusDescription;
  String get afterStatusDescription => _afterStatusDescription ?? '';
  set afterStatusDescription(String? val) => _afterStatusDescription = val;
  bool hasAfterStatusDescription() => _afterStatusDescription != null;

  // "afterComments" field.
  String? _afterComments;
  String get afterComments => _afterComments ?? '';
  set afterComments(String? val) => _afterComments = val;
  bool hasAfterComments() => _afterComments != null;

  // "afterImgFilePath" field.
  String? _afterImgFilePath;
  String get afterImgFilePath => _afterImgFilePath ?? '';
  set afterImgFilePath(String? val) => _afterImgFilePath = val;
  bool hasAfterImgFilePath() => _afterImgFilePath != null;

  // "afterImgFileName" field.
  String? _afterImgFileName;
  String get afterImgFileName => _afterImgFileName ?? '';
  set afterImgFileName(String? val) => _afterImgFileName = val;
  bool hasAfterImgFileName() => _afterImgFileName != null;

  // "afterRecord" field.
  int? _afterRecord;
  int get afterRecord => _afterRecord ?? 0;
  set afterRecord(int? val) => _afterRecord = val;
  void incrementAfterRecord(int amount) => _afterRecord = afterRecord + amount;
  bool hasAfterRecord() => _afterRecord != null;

  // "afterLatitude" field.
  double? _afterLatitude;
  double get afterLatitude => _afterLatitude ?? 0.0;
  set afterLatitude(double? val) => _afterLatitude = val;
  void incrementAfterLatitude(double amount) =>
      _afterLatitude = afterLatitude + amount;
  bool hasAfterLatitude() => _afterLatitude != null;

  // "afterLongitude" field.
  double? _afterLongitude;
  double get afterLongitude => _afterLongitude ?? 0.0;
  set afterLongitude(double? val) => _afterLongitude = val;
  void incrementAfterLongitude(double amount) =>
      _afterLongitude = afterLongitude + amount;
  bool hasAfterLongitude() => _afterLongitude != null;

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

  static DtVOrderVisitAssetStruct fromMap(Map<String, dynamic> data) =>
      DtVOrderVisitAssetStruct(
        id: castToType<int>(data['id']),
        orderVisitId: castToType<int>(data['orderVisitId']),
        assetId: castToType<int>(data['assetId']),
        code: data['code'] as String?,
        description: data['description'] as String?,
        isMoved: data['isMoved'] as bool?,
        movedComments: data['movedComments'] as String?,
        beforeUnitId: castToType<int>(data['beforeUnitId']),
        beforeUnitDescription: data['beforeUnitDescription'] as String?,
        beforeUnitLatitude: castToType<double>(data['beforeUnitLatitude']),
        beforeUnitLongitude: castToType<double>(data['beforeUnitLongitude']),
        beforeTagId: castToType<int>(data['beforeTagId']),
        beforeTagDescription: data['beforeTagDescription'] as String?,
        beforeTagSubId: castToType<int>(data['beforeTagSubId']),
        beforeTagSubDescription: data['beforeTagSubDescription'] as String?,
        beforeStatusId: castToType<int>(data['beforeStatusId']),
        beforeStatusDescription: data['beforeStatusDescription'] as String?,
        beforeComments: data['beforeComments'] as String?,
        beforeImgFilePath: data['beforeImgFilePath'] as String?,
        beforeImgFileName: data['beforeImgFileName'] as String?,
        beforeRecord: castToType<int>(data['beforeRecord']),
        beforeLatitude: castToType<double>(data['beforeLatitude']),
        beforeLongitude: castToType<double>(data['beforeLongitude']),
        afterUnitId: castToType<int>(data['afterUnitId']),
        afterUnitDescription: data['afterUnitDescription'] as String?,
        afterUnitLatitude: castToType<double>(data['afterUnitLatitude']),
        afterUnitLongitude: castToType<double>(data['afterUnitLongitude']),
        afterTagId: castToType<int>(data['afterTagId']),
        afterTagDescription: data['afterTagDescription'] as String?,
        afterTagSubId: castToType<int>(data['afterTagSubId']),
        afterTagSubDescription: data['afterTagSubDescription'] as String?,
        afterStatusId: castToType<int>(data['afterStatusId']),
        afterStatusDescription: data['afterStatusDescription'] as String?,
        afterComments: data['afterComments'] as String?,
        afterImgFilePath: data['afterImgFilePath'] as String?,
        afterImgFileName: data['afterImgFileName'] as String?,
        afterRecord: castToType<int>(data['afterRecord']),
        afterLatitude: castToType<double>(data['afterLatitude']),
        afterLongitude: castToType<double>(data['afterLongitude']),
        processingId: castToType<int>(data['processingId']),
        processingDescription: data['processingDescription'] as String?,
      );

  static DtVOrderVisitAssetStruct? maybeFromMap(dynamic data) => data is Map
      ? DtVOrderVisitAssetStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'orderVisitId': _orderVisitId,
        'assetId': _assetId,
        'code': _code,
        'description': _description,
        'isMoved': _isMoved,
        'movedComments': _movedComments,
        'beforeUnitId': _beforeUnitId,
        'beforeUnitDescription': _beforeUnitDescription,
        'beforeUnitLatitude': _beforeUnitLatitude,
        'beforeUnitLongitude': _beforeUnitLongitude,
        'beforeTagId': _beforeTagId,
        'beforeTagDescription': _beforeTagDescription,
        'beforeTagSubId': _beforeTagSubId,
        'beforeTagSubDescription': _beforeTagSubDescription,
        'beforeStatusId': _beforeStatusId,
        'beforeStatusDescription': _beforeStatusDescription,
        'beforeComments': _beforeComments,
        'beforeImgFilePath': _beforeImgFilePath,
        'beforeImgFileName': _beforeImgFileName,
        'beforeRecord': _beforeRecord,
        'beforeLatitude': _beforeLatitude,
        'beforeLongitude': _beforeLongitude,
        'afterUnitId': _afterUnitId,
        'afterUnitDescription': _afterUnitDescription,
        'afterUnitLatitude': _afterUnitLatitude,
        'afterUnitLongitude': _afterUnitLongitude,
        'afterTagId': _afterTagId,
        'afterTagDescription': _afterTagDescription,
        'afterTagSubId': _afterTagSubId,
        'afterTagSubDescription': _afterTagSubDescription,
        'afterStatusId': _afterStatusId,
        'afterStatusDescription': _afterStatusDescription,
        'afterComments': _afterComments,
        'afterImgFilePath': _afterImgFilePath,
        'afterImgFileName': _afterImgFileName,
        'afterRecord': _afterRecord,
        'afterLatitude': _afterLatitude,
        'afterLongitude': _afterLongitude,
        'processingId': _processingId,
        'processingDescription': _processingDescription,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'orderVisitId': serializeParam(
          _orderVisitId,
          ParamType.int,
        ),
        'assetId': serializeParam(
          _assetId,
          ParamType.int,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'isMoved': serializeParam(
          _isMoved,
          ParamType.bool,
        ),
        'movedComments': serializeParam(
          _movedComments,
          ParamType.String,
        ),
        'beforeUnitId': serializeParam(
          _beforeUnitId,
          ParamType.int,
        ),
        'beforeUnitDescription': serializeParam(
          _beforeUnitDescription,
          ParamType.String,
        ),
        'beforeUnitLatitude': serializeParam(
          _beforeUnitLatitude,
          ParamType.double,
        ),
        'beforeUnitLongitude': serializeParam(
          _beforeUnitLongitude,
          ParamType.double,
        ),
        'beforeTagId': serializeParam(
          _beforeTagId,
          ParamType.int,
        ),
        'beforeTagDescription': serializeParam(
          _beforeTagDescription,
          ParamType.String,
        ),
        'beforeTagSubId': serializeParam(
          _beforeTagSubId,
          ParamType.int,
        ),
        'beforeTagSubDescription': serializeParam(
          _beforeTagSubDescription,
          ParamType.String,
        ),
        'beforeStatusId': serializeParam(
          _beforeStatusId,
          ParamType.int,
        ),
        'beforeStatusDescription': serializeParam(
          _beforeStatusDescription,
          ParamType.String,
        ),
        'beforeComments': serializeParam(
          _beforeComments,
          ParamType.String,
        ),
        'beforeImgFilePath': serializeParam(
          _beforeImgFilePath,
          ParamType.String,
        ),
        'beforeImgFileName': serializeParam(
          _beforeImgFileName,
          ParamType.String,
        ),
        'beforeRecord': serializeParam(
          _beforeRecord,
          ParamType.int,
        ),
        'beforeLatitude': serializeParam(
          _beforeLatitude,
          ParamType.double,
        ),
        'beforeLongitude': serializeParam(
          _beforeLongitude,
          ParamType.double,
        ),
        'afterUnitId': serializeParam(
          _afterUnitId,
          ParamType.int,
        ),
        'afterUnitDescription': serializeParam(
          _afterUnitDescription,
          ParamType.String,
        ),
        'afterUnitLatitude': serializeParam(
          _afterUnitLatitude,
          ParamType.double,
        ),
        'afterUnitLongitude': serializeParam(
          _afterUnitLongitude,
          ParamType.double,
        ),
        'afterTagId': serializeParam(
          _afterTagId,
          ParamType.int,
        ),
        'afterTagDescription': serializeParam(
          _afterTagDescription,
          ParamType.String,
        ),
        'afterTagSubId': serializeParam(
          _afterTagSubId,
          ParamType.int,
        ),
        'afterTagSubDescription': serializeParam(
          _afterTagSubDescription,
          ParamType.String,
        ),
        'afterStatusId': serializeParam(
          _afterStatusId,
          ParamType.int,
        ),
        'afterStatusDescription': serializeParam(
          _afterStatusDescription,
          ParamType.String,
        ),
        'afterComments': serializeParam(
          _afterComments,
          ParamType.String,
        ),
        'afterImgFilePath': serializeParam(
          _afterImgFilePath,
          ParamType.String,
        ),
        'afterImgFileName': serializeParam(
          _afterImgFileName,
          ParamType.String,
        ),
        'afterRecord': serializeParam(
          _afterRecord,
          ParamType.int,
        ),
        'afterLatitude': serializeParam(
          _afterLatitude,
          ParamType.double,
        ),
        'afterLongitude': serializeParam(
          _afterLongitude,
          ParamType.double,
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

  static DtVOrderVisitAssetStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtVOrderVisitAssetStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        orderVisitId: deserializeParam(
          data['orderVisitId'],
          ParamType.int,
          false,
        ),
        assetId: deserializeParam(
          data['assetId'],
          ParamType.int,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        isMoved: deserializeParam(
          data['isMoved'],
          ParamType.bool,
          false,
        ),
        movedComments: deserializeParam(
          data['movedComments'],
          ParamType.String,
          false,
        ),
        beforeUnitId: deserializeParam(
          data['beforeUnitId'],
          ParamType.int,
          false,
        ),
        beforeUnitDescription: deserializeParam(
          data['beforeUnitDescription'],
          ParamType.String,
          false,
        ),
        beforeUnitLatitude: deserializeParam(
          data['beforeUnitLatitude'],
          ParamType.double,
          false,
        ),
        beforeUnitLongitude: deserializeParam(
          data['beforeUnitLongitude'],
          ParamType.double,
          false,
        ),
        beforeTagId: deserializeParam(
          data['beforeTagId'],
          ParamType.int,
          false,
        ),
        beforeTagDescription: deserializeParam(
          data['beforeTagDescription'],
          ParamType.String,
          false,
        ),
        beforeTagSubId: deserializeParam(
          data['beforeTagSubId'],
          ParamType.int,
          false,
        ),
        beforeTagSubDescription: deserializeParam(
          data['beforeTagSubDescription'],
          ParamType.String,
          false,
        ),
        beforeStatusId: deserializeParam(
          data['beforeStatusId'],
          ParamType.int,
          false,
        ),
        beforeStatusDescription: deserializeParam(
          data['beforeStatusDescription'],
          ParamType.String,
          false,
        ),
        beforeComments: deserializeParam(
          data['beforeComments'],
          ParamType.String,
          false,
        ),
        beforeImgFilePath: deserializeParam(
          data['beforeImgFilePath'],
          ParamType.String,
          false,
        ),
        beforeImgFileName: deserializeParam(
          data['beforeImgFileName'],
          ParamType.String,
          false,
        ),
        beforeRecord: deserializeParam(
          data['beforeRecord'],
          ParamType.int,
          false,
        ),
        beforeLatitude: deserializeParam(
          data['beforeLatitude'],
          ParamType.double,
          false,
        ),
        beforeLongitude: deserializeParam(
          data['beforeLongitude'],
          ParamType.double,
          false,
        ),
        afterUnitId: deserializeParam(
          data['afterUnitId'],
          ParamType.int,
          false,
        ),
        afterUnitDescription: deserializeParam(
          data['afterUnitDescription'],
          ParamType.String,
          false,
        ),
        afterUnitLatitude: deserializeParam(
          data['afterUnitLatitude'],
          ParamType.double,
          false,
        ),
        afterUnitLongitude: deserializeParam(
          data['afterUnitLongitude'],
          ParamType.double,
          false,
        ),
        afterTagId: deserializeParam(
          data['afterTagId'],
          ParamType.int,
          false,
        ),
        afterTagDescription: deserializeParam(
          data['afterTagDescription'],
          ParamType.String,
          false,
        ),
        afterTagSubId: deserializeParam(
          data['afterTagSubId'],
          ParamType.int,
          false,
        ),
        afterTagSubDescription: deserializeParam(
          data['afterTagSubDescription'],
          ParamType.String,
          false,
        ),
        afterStatusId: deserializeParam(
          data['afterStatusId'],
          ParamType.int,
          false,
        ),
        afterStatusDescription: deserializeParam(
          data['afterStatusDescription'],
          ParamType.String,
          false,
        ),
        afterComments: deserializeParam(
          data['afterComments'],
          ParamType.String,
          false,
        ),
        afterImgFilePath: deserializeParam(
          data['afterImgFilePath'],
          ParamType.String,
          false,
        ),
        afterImgFileName: deserializeParam(
          data['afterImgFileName'],
          ParamType.String,
          false,
        ),
        afterRecord: deserializeParam(
          data['afterRecord'],
          ParamType.int,
          false,
        ),
        afterLatitude: deserializeParam(
          data['afterLatitude'],
          ParamType.double,
          false,
        ),
        afterLongitude: deserializeParam(
          data['afterLongitude'],
          ParamType.double,
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
  String toString() => 'DtVOrderVisitAssetStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtVOrderVisitAssetStruct &&
        id == other.id &&
        orderVisitId == other.orderVisitId &&
        assetId == other.assetId &&
        code == other.code &&
        description == other.description &&
        isMoved == other.isMoved &&
        movedComments == other.movedComments &&
        beforeUnitId == other.beforeUnitId &&
        beforeUnitDescription == other.beforeUnitDescription &&
        beforeUnitLatitude == other.beforeUnitLatitude &&
        beforeUnitLongitude == other.beforeUnitLongitude &&
        beforeTagId == other.beforeTagId &&
        beforeTagDescription == other.beforeTagDescription &&
        beforeTagSubId == other.beforeTagSubId &&
        beforeTagSubDescription == other.beforeTagSubDescription &&
        beforeStatusId == other.beforeStatusId &&
        beforeStatusDescription == other.beforeStatusDescription &&
        beforeComments == other.beforeComments &&
        beforeImgFilePath == other.beforeImgFilePath &&
        beforeImgFileName == other.beforeImgFileName &&
        beforeRecord == other.beforeRecord &&
        beforeLatitude == other.beforeLatitude &&
        beforeLongitude == other.beforeLongitude &&
        afterUnitId == other.afterUnitId &&
        afterUnitDescription == other.afterUnitDescription &&
        afterUnitLatitude == other.afterUnitLatitude &&
        afterUnitLongitude == other.afterUnitLongitude &&
        afterTagId == other.afterTagId &&
        afterTagDescription == other.afterTagDescription &&
        afterTagSubId == other.afterTagSubId &&
        afterTagSubDescription == other.afterTagSubDescription &&
        afterStatusId == other.afterStatusId &&
        afterStatusDescription == other.afterStatusDescription &&
        afterComments == other.afterComments &&
        afterImgFilePath == other.afterImgFilePath &&
        afterImgFileName == other.afterImgFileName &&
        afterRecord == other.afterRecord &&
        afterLatitude == other.afterLatitude &&
        afterLongitude == other.afterLongitude &&
        processingId == other.processingId &&
        processingDescription == other.processingDescription;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        orderVisitId,
        assetId,
        code,
        description,
        isMoved,
        movedComments,
        beforeUnitId,
        beforeUnitDescription,
        beforeUnitLatitude,
        beforeUnitLongitude,
        beforeTagId,
        beforeTagDescription,
        beforeTagSubId,
        beforeTagSubDescription,
        beforeStatusId,
        beforeStatusDescription,
        beforeComments,
        beforeImgFilePath,
        beforeImgFileName,
        beforeRecord,
        beforeLatitude,
        beforeLongitude,
        afterUnitId,
        afterUnitDescription,
        afterUnitLatitude,
        afterUnitLongitude,
        afterTagId,
        afterTagDescription,
        afterTagSubId,
        afterTagSubDescription,
        afterStatusId,
        afterStatusDescription,
        afterComments,
        afterImgFilePath,
        afterImgFileName,
        afterRecord,
        afterLatitude,
        afterLongitude,
        processingId,
        processingDescription
      ]);
}

DtVOrderVisitAssetStruct createDtVOrderVisitAssetStruct({
  int? id,
  int? orderVisitId,
  int? assetId,
  String? code,
  String? description,
  bool? isMoved,
  String? movedComments,
  int? beforeUnitId,
  String? beforeUnitDescription,
  double? beforeUnitLatitude,
  double? beforeUnitLongitude,
  int? beforeTagId,
  String? beforeTagDescription,
  int? beforeTagSubId,
  String? beforeTagSubDescription,
  int? beforeStatusId,
  String? beforeStatusDescription,
  String? beforeComments,
  String? beforeImgFilePath,
  String? beforeImgFileName,
  int? beforeRecord,
  double? beforeLatitude,
  double? beforeLongitude,
  int? afterUnitId,
  String? afterUnitDescription,
  double? afterUnitLatitude,
  double? afterUnitLongitude,
  int? afterTagId,
  String? afterTagDescription,
  int? afterTagSubId,
  String? afterTagSubDescription,
  int? afterStatusId,
  String? afterStatusDescription,
  String? afterComments,
  String? afterImgFilePath,
  String? afterImgFileName,
  int? afterRecord,
  double? afterLatitude,
  double? afterLongitude,
  int? processingId,
  String? processingDescription,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtVOrderVisitAssetStruct(
      id: id,
      orderVisitId: orderVisitId,
      assetId: assetId,
      code: code,
      description: description,
      isMoved: isMoved,
      movedComments: movedComments,
      beforeUnitId: beforeUnitId,
      beforeUnitDescription: beforeUnitDescription,
      beforeUnitLatitude: beforeUnitLatitude,
      beforeUnitLongitude: beforeUnitLongitude,
      beforeTagId: beforeTagId,
      beforeTagDescription: beforeTagDescription,
      beforeTagSubId: beforeTagSubId,
      beforeTagSubDescription: beforeTagSubDescription,
      beforeStatusId: beforeStatusId,
      beforeStatusDescription: beforeStatusDescription,
      beforeComments: beforeComments,
      beforeImgFilePath: beforeImgFilePath,
      beforeImgFileName: beforeImgFileName,
      beforeRecord: beforeRecord,
      beforeLatitude: beforeLatitude,
      beforeLongitude: beforeLongitude,
      afterUnitId: afterUnitId,
      afterUnitDescription: afterUnitDescription,
      afterUnitLatitude: afterUnitLatitude,
      afterUnitLongitude: afterUnitLongitude,
      afterTagId: afterTagId,
      afterTagDescription: afterTagDescription,
      afterTagSubId: afterTagSubId,
      afterTagSubDescription: afterTagSubDescription,
      afterStatusId: afterStatusId,
      afterStatusDescription: afterStatusDescription,
      afterComments: afterComments,
      afterImgFilePath: afterImgFilePath,
      afterImgFileName: afterImgFileName,
      afterRecord: afterRecord,
      afterLatitude: afterLatitude,
      afterLongitude: afterLongitude,
      processingId: processingId,
      processingDescription: processingDescription,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtVOrderVisitAssetStruct? updateDtVOrderVisitAssetStruct(
  DtVOrderVisitAssetStruct? dtVOrderVisitAsset, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtVOrderVisitAsset
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtVOrderVisitAssetStructData(
  Map<String, dynamic> firestoreData,
  DtVOrderVisitAssetStruct? dtVOrderVisitAsset,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtVOrderVisitAsset == null) {
    return;
  }
  if (dtVOrderVisitAsset.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtVOrderVisitAsset.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtVOrderVisitAssetData =
      getDtVOrderVisitAssetFirestoreData(dtVOrderVisitAsset, forFieldValue);
  final nestedData =
      dtVOrderVisitAssetData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      dtVOrderVisitAsset.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtVOrderVisitAssetFirestoreData(
  DtVOrderVisitAssetStruct? dtVOrderVisitAsset, [
  bool forFieldValue = false,
]) {
  if (dtVOrderVisitAsset == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtVOrderVisitAsset.toMap());

  // Add any Firestore field values
  dtVOrderVisitAsset.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtVOrderVisitAssetListFirestoreData(
  List<DtVOrderVisitAssetStruct>? dtVOrderVisitAssets,
) =>
    dtVOrderVisitAssets
        ?.map((e) => getDtVOrderVisitAssetFirestoreData(e, true))
        .toList() ??
    [];

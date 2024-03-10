// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtUserStruct extends FFFirebaseStruct {
  DtUserStruct({
    int? id,
    String? uid,
    String? nameFull,
    String? nameShort,
    String? email,
    int? statusId,
    int? companyId,
    String? companyCode,
    String? companyDescription,
    String? companyImgFilePath,
    String? companyImgFileName,
    int? departmentId,
    String? departmentCode,
    String? departmentDescription,
    int? teamId,
    String? teamCode,
    int? teamIdPrevious,
    bool? isAdmin,
    bool? isAdminSuper,
    bool? isTeamLeader,
    String? appVersion,
    String? imgFileName,
    String? imgFilePath,
    int? orderVisitIdInProgress,
    int? orderIdInProgress,
    int? orderParentIdInProgress,
    int? orderVisitInProgressTeamLeaderId,
    String? fcmToken,
    String? accessToken,
    String? refreshToken,
    int? profileId,
    int? vehicleId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _uid = uid,
        _nameFull = nameFull,
        _nameShort = nameShort,
        _email = email,
        _statusId = statusId,
        _companyId = companyId,
        _companyCode = companyCode,
        _companyDescription = companyDescription,
        _companyImgFilePath = companyImgFilePath,
        _companyImgFileName = companyImgFileName,
        _departmentId = departmentId,
        _departmentCode = departmentCode,
        _departmentDescription = departmentDescription,
        _teamId = teamId,
        _teamCode = teamCode,
        _teamIdPrevious = teamIdPrevious,
        _isAdmin = isAdmin,
        _isAdminSuper = isAdminSuper,
        _isTeamLeader = isTeamLeader,
        _appVersion = appVersion,
        _imgFileName = imgFileName,
        _imgFilePath = imgFilePath,
        _orderVisitIdInProgress = orderVisitIdInProgress,
        _orderIdInProgress = orderIdInProgress,
        _orderParentIdInProgress = orderParentIdInProgress,
        _orderVisitInProgressTeamLeaderId = orderVisitInProgressTeamLeaderId,
        _fcmToken = fcmToken,
        _accessToken = accessToken,
        _refreshToken = refreshToken,
        _profileId = profileId,
        _vehicleId = vehicleId,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;
  bool hasUid() => _uid != null;

  // "nameFull" field.
  String? _nameFull;
  String get nameFull => _nameFull ?? '';
  set nameFull(String? val) => _nameFull = val;
  bool hasNameFull() => _nameFull != null;

  // "nameShort" field.
  String? _nameShort;
  String get nameShort => _nameShort ?? '';
  set nameShort(String? val) => _nameShort = val;
  bool hasNameShort() => _nameShort != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "statusId" field.
  int? _statusId;
  int get statusId => _statusId ?? 0;
  set statusId(int? val) => _statusId = val;
  void incrementStatusId(int amount) => _statusId = statusId + amount;
  bool hasStatusId() => _statusId != null;

  // "companyId" field.
  int? _companyId;
  int get companyId => _companyId ?? 0;
  set companyId(int? val) => _companyId = val;
  void incrementCompanyId(int amount) => _companyId = companyId + amount;
  bool hasCompanyId() => _companyId != null;

  // "companyCode" field.
  String? _companyCode;
  String get companyCode => _companyCode ?? '';
  set companyCode(String? val) => _companyCode = val;
  bool hasCompanyCode() => _companyCode != null;

  // "companyDescription" field.
  String? _companyDescription;
  String get companyDescription => _companyDescription ?? '';
  set companyDescription(String? val) => _companyDescription = val;
  bool hasCompanyDescription() => _companyDescription != null;

  // "companyImgFilePath" field.
  String? _companyImgFilePath;
  String get companyImgFilePath => _companyImgFilePath ?? '';
  set companyImgFilePath(String? val) => _companyImgFilePath = val;
  bool hasCompanyImgFilePath() => _companyImgFilePath != null;

  // "companyImgFileName" field.
  String? _companyImgFileName;
  String get companyImgFileName => _companyImgFileName ?? '';
  set companyImgFileName(String? val) => _companyImgFileName = val;
  bool hasCompanyImgFileName() => _companyImgFileName != null;

  // "departmentId" field.
  int? _departmentId;
  int get departmentId => _departmentId ?? 0;
  set departmentId(int? val) => _departmentId = val;
  void incrementDepartmentId(int amount) =>
      _departmentId = departmentId + amount;
  bool hasDepartmentId() => _departmentId != null;

  // "departmentCode" field.
  String? _departmentCode;
  String get departmentCode => _departmentCode ?? '';
  set departmentCode(String? val) => _departmentCode = val;
  bool hasDepartmentCode() => _departmentCode != null;

  // "departmentDescription" field.
  String? _departmentDescription;
  String get departmentDescription => _departmentDescription ?? '';
  set departmentDescription(String? val) => _departmentDescription = val;
  bool hasDepartmentDescription() => _departmentDescription != null;

  // "teamId" field.
  int? _teamId;
  int get teamId => _teamId ?? 0;
  set teamId(int? val) => _teamId = val;
  void incrementTeamId(int amount) => _teamId = teamId + amount;
  bool hasTeamId() => _teamId != null;

  // "teamCode" field.
  String? _teamCode;
  String get teamCode => _teamCode ?? '';
  set teamCode(String? val) => _teamCode = val;
  bool hasTeamCode() => _teamCode != null;

  // "teamIdPrevious" field.
  int? _teamIdPrevious;
  int get teamIdPrevious => _teamIdPrevious ?? 0;
  set teamIdPrevious(int? val) => _teamIdPrevious = val;
  void incrementTeamIdPrevious(int amount) =>
      _teamIdPrevious = teamIdPrevious + amount;
  bool hasTeamIdPrevious() => _teamIdPrevious != null;

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  set isAdmin(bool? val) => _isAdmin = val;
  bool hasIsAdmin() => _isAdmin != null;

  // "isAdminSuper" field.
  bool? _isAdminSuper;
  bool get isAdminSuper => _isAdminSuper ?? false;
  set isAdminSuper(bool? val) => _isAdminSuper = val;
  bool hasIsAdminSuper() => _isAdminSuper != null;

  // "isTeamLeader" field.
  bool? _isTeamLeader;
  bool get isTeamLeader => _isTeamLeader ?? false;
  set isTeamLeader(bool? val) => _isTeamLeader = val;
  bool hasIsTeamLeader() => _isTeamLeader != null;

  // "appVersion" field.
  String? _appVersion;
  String get appVersion => _appVersion ?? '';
  set appVersion(String? val) => _appVersion = val;
  bool hasAppVersion() => _appVersion != null;

  // "imgFileName" field.
  String? _imgFileName;
  String get imgFileName => _imgFileName ?? '';
  set imgFileName(String? val) => _imgFileName = val;
  bool hasImgFileName() => _imgFileName != null;

  // "imgFilePath" field.
  String? _imgFilePath;
  String get imgFilePath => _imgFilePath ?? '';
  set imgFilePath(String? val) => _imgFilePath = val;
  bool hasImgFilePath() => _imgFilePath != null;

  // "orderVisitIdInProgress" field.
  int? _orderVisitIdInProgress;
  int get orderVisitIdInProgress => _orderVisitIdInProgress ?? 0;
  set orderVisitIdInProgress(int? val) => _orderVisitIdInProgress = val;
  void incrementOrderVisitIdInProgress(int amount) =>
      _orderVisitIdInProgress = orderVisitIdInProgress + amount;
  bool hasOrderVisitIdInProgress() => _orderVisitIdInProgress != null;

  // "orderIdInProgress" field.
  int? _orderIdInProgress;
  int get orderIdInProgress => _orderIdInProgress ?? 0;
  set orderIdInProgress(int? val) => _orderIdInProgress = val;
  void incrementOrderIdInProgress(int amount) =>
      _orderIdInProgress = orderIdInProgress + amount;
  bool hasOrderIdInProgress() => _orderIdInProgress != null;

  // "orderParentIdInProgress" field.
  int? _orderParentIdInProgress;
  int get orderParentIdInProgress => _orderParentIdInProgress ?? 0;
  set orderParentIdInProgress(int? val) => _orderParentIdInProgress = val;
  void incrementOrderParentIdInProgress(int amount) =>
      _orderParentIdInProgress = orderParentIdInProgress + amount;
  bool hasOrderParentIdInProgress() => _orderParentIdInProgress != null;

  // "orderVisitInProgressTeamLeaderId" field.
  int? _orderVisitInProgressTeamLeaderId;
  int get orderVisitInProgressTeamLeaderId =>
      _orderVisitInProgressTeamLeaderId ?? 0;
  set orderVisitInProgressTeamLeaderId(int? val) =>
      _orderVisitInProgressTeamLeaderId = val;
  void incrementOrderVisitInProgressTeamLeaderId(int amount) =>
      _orderVisitInProgressTeamLeaderId =
          orderVisitInProgressTeamLeaderId + amount;
  bool hasOrderVisitInProgressTeamLeaderId() =>
      _orderVisitInProgressTeamLeaderId != null;

  // "fcmToken" field.
  String? _fcmToken;
  String get fcmToken => _fcmToken ?? '';
  set fcmToken(String? val) => _fcmToken = val;
  bool hasFcmToken() => _fcmToken != null;

  // "accessToken" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;
  bool hasAccessToken() => _accessToken != null;

  // "refreshToken" field.
  String? _refreshToken;
  String get refreshToken => _refreshToken ?? '';
  set refreshToken(String? val) => _refreshToken = val;
  bool hasRefreshToken() => _refreshToken != null;

  // "profileId" field.
  int? _profileId;
  int get profileId => _profileId ?? 0;
  set profileId(int? val) => _profileId = val;
  void incrementProfileId(int amount) => _profileId = profileId + amount;
  bool hasProfileId() => _profileId != null;

  // "vehicleId" field.
  int? _vehicleId;
  int get vehicleId => _vehicleId ?? 0;
  set vehicleId(int? val) => _vehicleId = val;
  void incrementVehicleId(int amount) => _vehicleId = vehicleId + amount;
  bool hasVehicleId() => _vehicleId != null;

  static DtUserStruct fromMap(Map<String, dynamic> data) => DtUserStruct(
        id: castToType<int>(data['id']),
        uid: data['uid'] as String?,
        nameFull: data['nameFull'] as String?,
        nameShort: data['nameShort'] as String?,
        email: data['email'] as String?,
        statusId: castToType<int>(data['statusId']),
        companyId: castToType<int>(data['companyId']),
        companyCode: data['companyCode'] as String?,
        companyDescription: data['companyDescription'] as String?,
        companyImgFilePath: data['companyImgFilePath'] as String?,
        companyImgFileName: data['companyImgFileName'] as String?,
        departmentId: castToType<int>(data['departmentId']),
        departmentCode: data['departmentCode'] as String?,
        departmentDescription: data['departmentDescription'] as String?,
        teamId: castToType<int>(data['teamId']),
        teamCode: data['teamCode'] as String?,
        teamIdPrevious: castToType<int>(data['teamIdPrevious']),
        isAdmin: data['isAdmin'] as bool?,
        isAdminSuper: data['isAdminSuper'] as bool?,
        isTeamLeader: data['isTeamLeader'] as bool?,
        appVersion: data['appVersion'] as String?,
        imgFileName: data['imgFileName'] as String?,
        imgFilePath: data['imgFilePath'] as String?,
        orderVisitIdInProgress: castToType<int>(data['orderVisitIdInProgress']),
        orderIdInProgress: castToType<int>(data['orderIdInProgress']),
        orderParentIdInProgress:
            castToType<int>(data['orderParentIdInProgress']),
        orderVisitInProgressTeamLeaderId:
            castToType<int>(data['orderVisitInProgressTeamLeaderId']),
        fcmToken: data['fcmToken'] as String?,
        accessToken: data['accessToken'] as String?,
        refreshToken: data['refreshToken'] as String?,
        profileId: castToType<int>(data['profileId']),
        vehicleId: castToType<int>(data['vehicleId']),
      );

  static DtUserStruct? maybeFromMap(dynamic data) =>
      data is Map ? DtUserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'uid': _uid,
        'nameFull': _nameFull,
        'nameShort': _nameShort,
        'email': _email,
        'statusId': _statusId,
        'companyId': _companyId,
        'companyCode': _companyCode,
        'companyDescription': _companyDescription,
        'companyImgFilePath': _companyImgFilePath,
        'companyImgFileName': _companyImgFileName,
        'departmentId': _departmentId,
        'departmentCode': _departmentCode,
        'departmentDescription': _departmentDescription,
        'teamId': _teamId,
        'teamCode': _teamCode,
        'teamIdPrevious': _teamIdPrevious,
        'isAdmin': _isAdmin,
        'isAdminSuper': _isAdminSuper,
        'isTeamLeader': _isTeamLeader,
        'appVersion': _appVersion,
        'imgFileName': _imgFileName,
        'imgFilePath': _imgFilePath,
        'orderVisitIdInProgress': _orderVisitIdInProgress,
        'orderIdInProgress': _orderIdInProgress,
        'orderParentIdInProgress': _orderParentIdInProgress,
        'orderVisitInProgressTeamLeaderId': _orderVisitInProgressTeamLeaderId,
        'fcmToken': _fcmToken,
        'accessToken': _accessToken,
        'refreshToken': _refreshToken,
        'profileId': _profileId,
        'vehicleId': _vehicleId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'nameFull': serializeParam(
          _nameFull,
          ParamType.String,
        ),
        'nameShort': serializeParam(
          _nameShort,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'statusId': serializeParam(
          _statusId,
          ParamType.int,
        ),
        'companyId': serializeParam(
          _companyId,
          ParamType.int,
        ),
        'companyCode': serializeParam(
          _companyCode,
          ParamType.String,
        ),
        'companyDescription': serializeParam(
          _companyDescription,
          ParamType.String,
        ),
        'companyImgFilePath': serializeParam(
          _companyImgFilePath,
          ParamType.String,
        ),
        'companyImgFileName': serializeParam(
          _companyImgFileName,
          ParamType.String,
        ),
        'departmentId': serializeParam(
          _departmentId,
          ParamType.int,
        ),
        'departmentCode': serializeParam(
          _departmentCode,
          ParamType.String,
        ),
        'departmentDescription': serializeParam(
          _departmentDescription,
          ParamType.String,
        ),
        'teamId': serializeParam(
          _teamId,
          ParamType.int,
        ),
        'teamCode': serializeParam(
          _teamCode,
          ParamType.String,
        ),
        'teamIdPrevious': serializeParam(
          _teamIdPrevious,
          ParamType.int,
        ),
        'isAdmin': serializeParam(
          _isAdmin,
          ParamType.bool,
        ),
        'isAdminSuper': serializeParam(
          _isAdminSuper,
          ParamType.bool,
        ),
        'isTeamLeader': serializeParam(
          _isTeamLeader,
          ParamType.bool,
        ),
        'appVersion': serializeParam(
          _appVersion,
          ParamType.String,
        ),
        'imgFileName': serializeParam(
          _imgFileName,
          ParamType.String,
        ),
        'imgFilePath': serializeParam(
          _imgFilePath,
          ParamType.String,
        ),
        'orderVisitIdInProgress': serializeParam(
          _orderVisitIdInProgress,
          ParamType.int,
        ),
        'orderIdInProgress': serializeParam(
          _orderIdInProgress,
          ParamType.int,
        ),
        'orderParentIdInProgress': serializeParam(
          _orderParentIdInProgress,
          ParamType.int,
        ),
        'orderVisitInProgressTeamLeaderId': serializeParam(
          _orderVisitInProgressTeamLeaderId,
          ParamType.int,
        ),
        'fcmToken': serializeParam(
          _fcmToken,
          ParamType.String,
        ),
        'accessToken': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'refreshToken': serializeParam(
          _refreshToken,
          ParamType.String,
        ),
        'profileId': serializeParam(
          _profileId,
          ParamType.int,
        ),
        'vehicleId': serializeParam(
          _vehicleId,
          ParamType.int,
        ),
      }.withoutNulls;

  static DtUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtUserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        nameFull: deserializeParam(
          data['nameFull'],
          ParamType.String,
          false,
        ),
        nameShort: deserializeParam(
          data['nameShort'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        statusId: deserializeParam(
          data['statusId'],
          ParamType.int,
          false,
        ),
        companyId: deserializeParam(
          data['companyId'],
          ParamType.int,
          false,
        ),
        companyCode: deserializeParam(
          data['companyCode'],
          ParamType.String,
          false,
        ),
        companyDescription: deserializeParam(
          data['companyDescription'],
          ParamType.String,
          false,
        ),
        companyImgFilePath: deserializeParam(
          data['companyImgFilePath'],
          ParamType.String,
          false,
        ),
        companyImgFileName: deserializeParam(
          data['companyImgFileName'],
          ParamType.String,
          false,
        ),
        departmentId: deserializeParam(
          data['departmentId'],
          ParamType.int,
          false,
        ),
        departmentCode: deserializeParam(
          data['departmentCode'],
          ParamType.String,
          false,
        ),
        departmentDescription: deserializeParam(
          data['departmentDescription'],
          ParamType.String,
          false,
        ),
        teamId: deserializeParam(
          data['teamId'],
          ParamType.int,
          false,
        ),
        teamCode: deserializeParam(
          data['teamCode'],
          ParamType.String,
          false,
        ),
        teamIdPrevious: deserializeParam(
          data['teamIdPrevious'],
          ParamType.int,
          false,
        ),
        isAdmin: deserializeParam(
          data['isAdmin'],
          ParamType.bool,
          false,
        ),
        isAdminSuper: deserializeParam(
          data['isAdminSuper'],
          ParamType.bool,
          false,
        ),
        isTeamLeader: deserializeParam(
          data['isTeamLeader'],
          ParamType.bool,
          false,
        ),
        appVersion: deserializeParam(
          data['appVersion'],
          ParamType.String,
          false,
        ),
        imgFileName: deserializeParam(
          data['imgFileName'],
          ParamType.String,
          false,
        ),
        imgFilePath: deserializeParam(
          data['imgFilePath'],
          ParamType.String,
          false,
        ),
        orderVisitIdInProgress: deserializeParam(
          data['orderVisitIdInProgress'],
          ParamType.int,
          false,
        ),
        orderIdInProgress: deserializeParam(
          data['orderIdInProgress'],
          ParamType.int,
          false,
        ),
        orderParentIdInProgress: deserializeParam(
          data['orderParentIdInProgress'],
          ParamType.int,
          false,
        ),
        orderVisitInProgressTeamLeaderId: deserializeParam(
          data['orderVisitInProgressTeamLeaderId'],
          ParamType.int,
          false,
        ),
        fcmToken: deserializeParam(
          data['fcmToken'],
          ParamType.String,
          false,
        ),
        accessToken: deserializeParam(
          data['accessToken'],
          ParamType.String,
          false,
        ),
        refreshToken: deserializeParam(
          data['refreshToken'],
          ParamType.String,
          false,
        ),
        profileId: deserializeParam(
          data['profileId'],
          ParamType.int,
          false,
        ),
        vehicleId: deserializeParam(
          data['vehicleId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DtUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtUserStruct &&
        id == other.id &&
        uid == other.uid &&
        nameFull == other.nameFull &&
        nameShort == other.nameShort &&
        email == other.email &&
        statusId == other.statusId &&
        companyId == other.companyId &&
        companyCode == other.companyCode &&
        companyDescription == other.companyDescription &&
        companyImgFilePath == other.companyImgFilePath &&
        companyImgFileName == other.companyImgFileName &&
        departmentId == other.departmentId &&
        departmentCode == other.departmentCode &&
        departmentDescription == other.departmentDescription &&
        teamId == other.teamId &&
        teamCode == other.teamCode &&
        teamIdPrevious == other.teamIdPrevious &&
        isAdmin == other.isAdmin &&
        isAdminSuper == other.isAdminSuper &&
        isTeamLeader == other.isTeamLeader &&
        appVersion == other.appVersion &&
        imgFileName == other.imgFileName &&
        imgFilePath == other.imgFilePath &&
        orderVisitIdInProgress == other.orderVisitIdInProgress &&
        orderIdInProgress == other.orderIdInProgress &&
        orderParentIdInProgress == other.orderParentIdInProgress &&
        orderVisitInProgressTeamLeaderId ==
            other.orderVisitInProgressTeamLeaderId &&
        fcmToken == other.fcmToken &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        profileId == other.profileId &&
        vehicleId == other.vehicleId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        uid,
        nameFull,
        nameShort,
        email,
        statusId,
        companyId,
        companyCode,
        companyDescription,
        companyImgFilePath,
        companyImgFileName,
        departmentId,
        departmentCode,
        departmentDescription,
        teamId,
        teamCode,
        teamIdPrevious,
        isAdmin,
        isAdminSuper,
        isTeamLeader,
        appVersion,
        imgFileName,
        imgFilePath,
        orderVisitIdInProgress,
        orderIdInProgress,
        orderParentIdInProgress,
        orderVisitInProgressTeamLeaderId,
        fcmToken,
        accessToken,
        refreshToken,
        profileId,
        vehicleId
      ]);
}

DtUserStruct createDtUserStruct({
  int? id,
  String? uid,
  String? nameFull,
  String? nameShort,
  String? email,
  int? statusId,
  int? companyId,
  String? companyCode,
  String? companyDescription,
  String? companyImgFilePath,
  String? companyImgFileName,
  int? departmentId,
  String? departmentCode,
  String? departmentDescription,
  int? teamId,
  String? teamCode,
  int? teamIdPrevious,
  bool? isAdmin,
  bool? isAdminSuper,
  bool? isTeamLeader,
  String? appVersion,
  String? imgFileName,
  String? imgFilePath,
  int? orderVisitIdInProgress,
  int? orderIdInProgress,
  int? orderParentIdInProgress,
  int? orderVisitInProgressTeamLeaderId,
  String? fcmToken,
  String? accessToken,
  String? refreshToken,
  int? profileId,
  int? vehicleId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DtUserStruct(
      id: id,
      uid: uid,
      nameFull: nameFull,
      nameShort: nameShort,
      email: email,
      statusId: statusId,
      companyId: companyId,
      companyCode: companyCode,
      companyDescription: companyDescription,
      companyImgFilePath: companyImgFilePath,
      companyImgFileName: companyImgFileName,
      departmentId: departmentId,
      departmentCode: departmentCode,
      departmentDescription: departmentDescription,
      teamId: teamId,
      teamCode: teamCode,
      teamIdPrevious: teamIdPrevious,
      isAdmin: isAdmin,
      isAdminSuper: isAdminSuper,
      isTeamLeader: isTeamLeader,
      appVersion: appVersion,
      imgFileName: imgFileName,
      imgFilePath: imgFilePath,
      orderVisitIdInProgress: orderVisitIdInProgress,
      orderIdInProgress: orderIdInProgress,
      orderParentIdInProgress: orderParentIdInProgress,
      orderVisitInProgressTeamLeaderId: orderVisitInProgressTeamLeaderId,
      fcmToken: fcmToken,
      accessToken: accessToken,
      refreshToken: refreshToken,
      profileId: profileId,
      vehicleId: vehicleId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DtUserStruct? updateDtUserStruct(
  DtUserStruct? dtUser, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dtUser
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDtUserStructData(
  Map<String, dynamic> firestoreData,
  DtUserStruct? dtUser,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dtUser == null) {
    return;
  }
  if (dtUser.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dtUser.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dtUserData = getDtUserFirestoreData(dtUser, forFieldValue);
  final nestedData = dtUserData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dtUser.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDtUserFirestoreData(
  DtUserStruct? dtUser, [
  bool forFieldValue = false,
]) {
  if (dtUser == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dtUser.toMap());

  // Add any Firestore field values
  dtUser.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDtUserListFirestoreData(
  List<DtUserStruct>? dtUsers,
) =>
    dtUsers?.map((e) => getDtUserFirestoreData(e, true)).toList() ?? [];

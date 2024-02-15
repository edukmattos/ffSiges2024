import '../database.dart';

class VUsersTable extends SupabaseTable<VUsersRow> {
  @override
  String get tableName => 'v_users';

  @override
  VUsersRow createRow(Map<String, dynamic> data) => VUsersRow(data);
}

class VUsersRow extends SupabaseDataRow {
  VUsersRow(super.data);

  @override
  SupabaseTable get table => VUsersTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  int? get companyId => getField<int>('companyId');
  set companyId(int? value) => setField<int>('companyId', value);

  String? get companyCode => getField<String>('companyCode');
  set companyCode(String? value) => setField<String>('companyCode', value);

  String? get companyDescription => getField<String>('companyDescription');
  set companyDescription(String? value) =>
      setField<String>('companyDescription', value);

  String? get companyImgFilePath => getField<String>('companyImgFilePath');
  set companyImgFilePath(String? value) =>
      setField<String>('companyImgFilePath', value);

  String? get companyImgFileName => getField<String>('companyImgFileName');
  set companyImgFileName(String? value) =>
      setField<String>('companyImgFileName', value);

  int? get departmentId => getField<int>('departmentId');
  set departmentId(int? value) => setField<int>('departmentId', value);

  String? get departmentCode => getField<String>('departmentCode');
  set departmentCode(String? value) =>
      setField<String>('departmentCode', value);

  String? get departmentDescription =>
      getField<String>('departmentDescription');
  set departmentDescription(String? value) =>
      setField<String>('departmentDescription', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get nameShort => getField<String>('nameShort');
  set nameShort(String? value) => setField<String>('nameShort', value);

  String? get nameFull => getField<String>('nameFull');
  set nameFull(String? value) => setField<String>('nameFull', value);

  int? get teamId => getField<int>('teamId');
  set teamId(int? value) => setField<int>('teamId', value);

  String? get teamCode => getField<String>('teamCode');
  set teamCode(String? value) => setField<String>('teamCode', value);

  String? get teamDescription => getField<String>('teamDescription');
  set teamDescription(String? value) =>
      setField<String>('teamDescription', value);

  int? get teamIdPrevious => getField<int>('teamIdPrevious');
  set teamIdPrevious(int? value) => setField<int>('teamIdPrevious', value);

  int? get statusId => getField<int>('statusId');
  set statusId(int? value) => setField<int>('statusId', value);

  String? get statusCode => getField<String>('statusCode');
  set statusCode(String? value) => setField<String>('statusCode', value);

  String? get statusDescription => getField<String>('statusDescription');
  set statusDescription(String? value) =>
      setField<String>('statusDescription', value);

  bool? get isTeamLeader => getField<bool>('isTeamLeader');
  set isTeamLeader(bool? value) => setField<bool>('isTeamLeader', value);

  bool? get isAdmin => getField<bool>('isAdmin');
  set isAdmin(bool? value) => setField<bool>('isAdmin', value);

  bool? get isAdminSuper => getField<bool>('isAdminSuper');
  set isAdminSuper(bool? value) => setField<bool>('isAdminSuper', value);

  String? get imgFilePath => getField<String>('imgFilePath');
  set imgFilePath(String? value) => setField<String>('imgFilePath', value);

  String? get imgFileName => getField<String>('imgFileName');
  set imgFileName(String? value) => setField<String>('imgFileName', value);

  String? get fcmToken => getField<String>('fcmToken');
  set fcmToken(String? value) => setField<String>('fcmToken', value);

  String? get appVersion => getField<String>('appVersion');
  set appVersion(String? value) => setField<String>('appVersion', value);

  int? get orderVisitIdInProgress => getField<int>('orderVisitIdInProgress');
  set orderVisitIdInProgress(int? value) =>
      setField<int>('orderVisitIdInProgress', value);

  int? get orderIdInProgress => getField<int>('orderIdInProgress');
  set orderIdInProgress(int? value) =>
      setField<int>('orderIdInProgress', value);

  int? get orderParentIdInProgress => getField<int>('orderParentIdInProgress');
  set orderParentIdInProgress(int? value) =>
      setField<int>('orderParentIdInProgress', value);

  int? get orderVisitInProgressTeamLeaderId =>
      getField<int>('orderVisitInProgressTeamLeaderId');
  set orderVisitInProgressTeamLeaderId(int? value) =>
      setField<int>('orderVisitInProgressTeamLeaderId', value);

  int? get profileId => getField<int>('profileId');
  set profileId(int? value) => setField<int>('profileId', value);
}

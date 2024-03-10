import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(super.data);

  @override
  SupabaseTable get table => UsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String? get nameFull => getField<String>('nameFull');
  set nameFull(String? value) => setField<String>('nameFull', value);

  String? get nameShort => getField<String>('nameShort');
  set nameShort(String? value) => setField<String>('nameShort', value);

  String? get mobile => getField<String>('mobile');
  set mobile(String? value) => setField<String>('mobile', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  DateTime get createdDate => getField<DateTime>('createdDate')!;
  set createdDate(DateTime value) => setField<DateTime>('createdDate', value);

  DateTime? get updatedDate => getField<DateTime>('updatedDate');
  set updatedDate(DateTime? value) => setField<DateTime>('updatedDate', value);

  int? get updatedUserId => getField<int>('updatedUserId');
  set updatedUserId(int? value) => setField<int>('updatedUserId', value);

  int? get teamId => getField<int>('teamId');
  set teamId(int? value) => setField<int>('teamId', value);

  bool? get isTeamLeader => getField<bool>('isTeamLeader');
  set isTeamLeader(bool? value) => setField<bool>('isTeamLeader', value);

  String? get imgFilePath => getField<String>('imgFilePath');
  set imgFilePath(String? value) => setField<String>('imgFilePath', value);

  int? get companyId => getField<int>('companyId');
  set companyId(int? value) => setField<int>('companyId', value);

  int? get departmentId => getField<int>('departmentId');
  set departmentId(int? value) => setField<int>('departmentId', value);

  String? get fcmToken => getField<String>('fcmToken');
  set fcmToken(String? value) => setField<String>('fcmToken', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  int? get statusId => getField<int>('statusId');
  set statusId(int? value) => setField<int>('statusId', value);

  bool? get isAdmin => getField<bool>('isAdmin');
  set isAdmin(bool? value) => setField<bool>('isAdmin', value);

  bool? get isAdminSuper => getField<bool>('isAdminSuper');
  set isAdminSuper(bool? value) => setField<bool>('isAdminSuper', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get appVersion => getField<String>('appVersion');
  set appVersion(String? value) => setField<String>('appVersion', value);

  String? get imgFileName => getField<String>('imgFileName');
  set imgFileName(String? value) => setField<String>('imgFileName', value);

  int? get orderVisitIdInProgress => getField<int>('orderVisitIdInProgress');
  set orderVisitIdInProgress(int? value) =>
      setField<int>('orderVisitIdInProgress', value);

  int? get teamIdPrevious => getField<int>('teamIdPrevious');
  set teamIdPrevious(int? value) => setField<int>('teamIdPrevious', value);

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

  int? get vehicleId => getField<int>('vehicleId');
  set vehicleId(int? value) => setField<int>('vehicleId', value);
}

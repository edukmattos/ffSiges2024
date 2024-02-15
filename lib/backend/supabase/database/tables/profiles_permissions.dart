import '../database.dart';

class ProfilesPermissionsTable extends SupabaseTable<ProfilesPermissionsRow> {
  @override
  String get tableName => 'profilesPermissions';

  @override
  ProfilesPermissionsRow createRow(Map<String, dynamic> data) =>
      ProfilesPermissionsRow(data);
}

class ProfilesPermissionsRow extends SupabaseDataRow {
  ProfilesPermissionsRow(super.data);

  @override
  SupabaseTable get table => ProfilesPermissionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get profileId => getField<int>('profileId');
  set profileId(int? value) => setField<int>('profileId', value);

  int? get appPageId => getField<int>('appPageId');
  set appPageId(int? value) => setField<int>('appPageId', value);

  bool? get isPermission => getField<bool>('isPermission');
  set isPermission(bool? value) => setField<bool>('isPermission', value);
}

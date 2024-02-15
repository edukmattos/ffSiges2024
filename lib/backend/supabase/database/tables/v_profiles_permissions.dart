import '../database.dart';

class VProfilesPermissionsTable extends SupabaseTable<VProfilesPermissionsRow> {
  @override
  String get tableName => 'v_profiles_permissions';

  @override
  VProfilesPermissionsRow createRow(Map<String, dynamic> data) =>
      VProfilesPermissionsRow(data);
}

class VProfilesPermissionsRow extends SupabaseDataRow {
  VProfilesPermissionsRow(super.data);

  @override
  SupabaseTable get table => VProfilesPermissionsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get profileId => getField<int>('profileId');
  set profileId(int? value) => setField<int>('profileId', value);

  int? get appPageId => getField<int>('appPageId');
  set appPageId(int? value) => setField<int>('appPageId', value);

  bool? get isPermission => getField<bool>('isPermission');
  set isPermission(bool? value) => setField<bool>('isPermission', value);
}

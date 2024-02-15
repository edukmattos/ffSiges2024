import '../database.dart';

class UsersProfilesTable extends SupabaseTable<UsersProfilesRow> {
  @override
  String get tableName => 'usersProfiles';

  @override
  UsersProfilesRow createRow(Map<String, dynamic> data) =>
      UsersProfilesRow(data);
}

class UsersProfilesRow extends SupabaseDataRow {
  UsersProfilesRow(super.data);

  @override
  SupabaseTable get table => UsersProfilesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}

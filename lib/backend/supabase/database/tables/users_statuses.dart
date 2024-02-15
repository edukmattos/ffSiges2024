import '../database.dart';

class UsersStatusesTable extends SupabaseTable<UsersStatusesRow> {
  @override
  String get tableName => 'usersStatuses';

  @override
  UsersStatusesRow createRow(Map<String, dynamic> data) =>
      UsersStatusesRow(data);
}

class UsersStatusesRow extends SupabaseDataRow {
  UsersStatusesRow(super.data);

  @override
  SupabaseTable get table => UsersStatusesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}

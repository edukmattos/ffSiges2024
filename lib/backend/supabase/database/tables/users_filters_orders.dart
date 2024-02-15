import '../database.dart';

class UsersFiltersOrdersTable extends SupabaseTable<UsersFiltersOrdersRow> {
  @override
  String get tableName => 'usersFiltersOrders';

  @override
  UsersFiltersOrdersRow createRow(Map<String, dynamic> data) =>
      UsersFiltersOrdersRow(data);
}

class UsersFiltersOrdersRow extends SupabaseDataRow {
  UsersFiltersOrdersRow(super.data);

  @override
  SupabaseTable get table => UsersFiltersOrdersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('userId');
  set userId(int? value) => setField<int>('userId', value);

  List<int> get statuses => getListField<int>('statuses');
  set statuses(List<int>? value) => setListField<int>('statuses', value);

  List<int> get types => getListField<int>('types');
  set types(List<int>? value) => setListField<int>('types', value);

  List<int> get typesSubs => getListField<int>('typesSubs');
  set typesSubs(List<int>? value) => setListField<int>('typesSubs', value);
}

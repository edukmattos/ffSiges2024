import '../database.dart';

class UsersMaterialsTable extends SupabaseTable<UsersMaterialsRow> {
  @override
  String get tableName => 'usersMaterials';

  @override
  UsersMaterialsRow createRow(Map<String, dynamic> data) =>
      UsersMaterialsRow(data);
}

class UsersMaterialsRow extends SupabaseDataRow {
  UsersMaterialsRow(super.data);

  @override
  SupabaseTable get table => UsersMaterialsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get materialId => getField<int>('materialId')!;
  set materialId(int value) => setField<int>('materialId', value);

  int get userId => getField<int>('userId')!;
  set userId(int value) => setField<int>('userId', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);
}

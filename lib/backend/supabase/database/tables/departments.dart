import '../database.dart';

class DepartmentsTable extends SupabaseTable<DepartmentsRow> {
  @override
  String get tableName => 'departments';

  @override
  DepartmentsRow createRow(Map<String, dynamic> data) => DepartmentsRow(data);
}

class DepartmentsRow extends SupabaseDataRow {
  DepartmentsRow(super.data);

  @override
  SupabaseTable get table => DepartmentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get code => getField<String>('code')!;
  set code(String value) => setField<String>('code', value);

  String get description => getField<String>('description')!;
  set description(String value) => setField<String>('description', value);

  int? get parentId => getField<int>('parent_id');
  set parentId(int? value) => setField<int>('parent_id', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);
}

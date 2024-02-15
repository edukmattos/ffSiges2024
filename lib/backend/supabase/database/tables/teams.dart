import '../database.dart';

class TeamsTable extends SupabaseTable<TeamsRow> {
  @override
  String get tableName => 'teams';

  @override
  TeamsRow createRow(Map<String, dynamic> data) => TeamsRow(data);
}

class TeamsRow extends SupabaseDataRow {
  TeamsRow(super.data);

  @override
  SupabaseTable get table => TeamsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get parentId => getField<int>('parentId');
  set parentId(int? value) => setField<int>('parentId', value);

  String get code => getField<String>('code')!;
  set code(String value) => setField<String>('code', value);

  String get description => getField<String>('description')!;
  set description(String value) => setField<String>('description', value);

  int? get departmentId => getField<int>('departmentId');
  set departmentId(int? value) => setField<int>('departmentId', value);

  bool get isAvailable => getField<bool>('isAvailable')!;
  set isAvailable(bool value) => setField<bool>('isAvailable', value);

  String? get imgUrl => getField<String>('imgUrl');
  set imgUrl(String? value) => setField<String>('imgUrl', value);

  int get totalEmployees => getField<int>('totalEmployees')!;
  set totalEmployees(int value) => setField<int>('totalEmployees', value);

  int? get companyId => getField<int>('companyId');
  set companyId(int? value) => setField<int>('companyId', value);
}

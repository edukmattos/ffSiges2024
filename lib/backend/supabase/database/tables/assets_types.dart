import '../database.dart';

class AssetsTypesTable extends SupabaseTable<AssetsTypesRow> {
  @override
  String get tableName => 'assetsTypes';

  @override
  AssetsTypesRow createRow(Map<String, dynamic> data) => AssetsTypesRow(data);
}

class AssetsTypesRow extends SupabaseDataRow {
  AssetsTypesRow(super.data);

  @override
  SupabaseTable get table => AssetsTypesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get companyId => getField<int>('companyId');
  set companyId(int? value) => setField<int>('companyId', value);

  int? get departmentId => getField<int>('departmentId');
  set departmentId(int? value) => setField<int>('departmentId', value);

  int? get parentId => getField<int>('parentId');
  set parentId(int? value) => setField<int>('parentId', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('isAvailable');
  set isAvailable(bool? value) => setField<bool>('isAvailable', value);
}

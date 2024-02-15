import '../database.dart';

class WarehousesTable extends SupabaseTable<WarehousesRow> {
  @override
  String get tableName => 'warehouses';

  @override
  WarehousesRow createRow(Map<String, dynamic> data) => WarehousesRow(data);
}

class WarehousesRow extends SupabaseDataRow {
  WarehousesRow(super.data);

  @override
  SupabaseTable get table => WarehousesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get parentId => getField<int>('parent_id');
  set parentId(int? value) => setField<int>('parent_id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);
}

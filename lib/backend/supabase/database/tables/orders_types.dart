import '../database.dart';

class OrdersTypesTable extends SupabaseTable<OrdersTypesRow> {
  @override
  String get tableName => 'ordersTypes';

  @override
  OrdersTypesRow createRow(Map<String, dynamic> data) => OrdersTypesRow(data);
}

class OrdersTypesRow extends SupabaseDataRow {
  OrdersTypesRow(super.data);

  @override
  SupabaseTable get table => OrdersTypesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get departmentId => getField<int>('departmentId')!;
  set departmentId(int value) => setField<int>('departmentId', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get companyId => getField<int>('companyId');
  set companyId(int? value) => setField<int>('companyId', value);
}

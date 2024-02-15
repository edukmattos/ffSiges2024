import '../database.dart';

class OrdersTypesSubsTable extends SupabaseTable<OrdersTypesSubsRow> {
  @override
  String get tableName => 'ordersTypesSubs';

  @override
  OrdersTypesSubsRow createRow(Map<String, dynamic> data) =>
      OrdersTypesSubsRow(data);
}

class OrdersTypesSubsRow extends SupabaseDataRow {
  OrdersTypesSubsRow(super.data);

  @override
  SupabaseTable get table => OrdersTypesSubsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get departmentId => getField<int>('departmentId')!;
  set departmentId(int value) => setField<int>('departmentId', value);

  String get code => getField<String>('code')!;
  set code(String value) => setField<String>('code', value);

  String get description => getField<String>('description')!;
  set description(String value) => setField<String>('description', value);

  int? get companyId => getField<int>('companyId');
  set companyId(int? value) => setField<int>('companyId', value);
}

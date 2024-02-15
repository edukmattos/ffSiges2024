import '../database.dart';

class OrdersVisitsStatusesTable extends SupabaseTable<OrdersVisitsStatusesRow> {
  @override
  String get tableName => 'ordersVisitsStatuses';

  @override
  OrdersVisitsStatusesRow createRow(Map<String, dynamic> data) =>
      OrdersVisitsStatusesRow(data);
}

class OrdersVisitsStatusesRow extends SupabaseDataRow {
  OrdersVisitsStatusesRow(super.data);

  @override
  SupabaseTable get table => OrdersVisitsStatusesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}

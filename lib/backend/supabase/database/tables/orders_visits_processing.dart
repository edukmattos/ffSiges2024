import '../database.dart';

class OrdersVisitsProcessingTable
    extends SupabaseTable<OrdersVisitsProcessingRow> {
  @override
  String get tableName => 'ordersVisitsProcessing';

  @override
  OrdersVisitsProcessingRow createRow(Map<String, dynamic> data) =>
      OrdersVisitsProcessingRow(data);
}

class OrdersVisitsProcessingRow extends SupabaseDataRow {
  OrdersVisitsProcessingRow(super.data);

  @override
  SupabaseTable get table => OrdersVisitsProcessingTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}

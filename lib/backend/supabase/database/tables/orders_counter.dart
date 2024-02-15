import '../database.dart';

class OrdersCounterTable extends SupabaseTable<OrdersCounterRow> {
  @override
  String get tableName => 'ordersCounter';

  @override
  OrdersCounterRow createRow(Map<String, dynamic> data) =>
      OrdersCounterRow(data);
}

class OrdersCounterRow extends SupabaseDataRow {
  OrdersCounterRow(super.data);

  @override
  SupabaseTable get table => OrdersCounterTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get companyId => getField<int>('companyId');
  set companyId(int? value) => setField<int>('companyId', value);

  double? get year => getField<double>('year');
  set year(double? value) => setField<double>('year', value);

  int? get counter => getField<int>('counter');
  set counter(int? value) => setField<int>('counter', value);
}

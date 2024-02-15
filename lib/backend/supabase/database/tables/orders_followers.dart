import '../database.dart';

class OrdersFollowersTable extends SupabaseTable<OrdersFollowersRow> {
  @override
  String get tableName => 'ordersFollowers';

  @override
  OrdersFollowersRow createRow(Map<String, dynamic> data) =>
      OrdersFollowersRow(data);
}

class OrdersFollowersRow extends SupabaseDataRow {
  OrdersFollowersRow(super.data);

  @override
  SupabaseTable get table => OrdersFollowersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get userId => getField<int>('userId')!;
  set userId(int value) => setField<int>('userId', value);

  int get orderId => getField<int>('orderId')!;
  set orderId(int value) => setField<int>('orderId', value);
}

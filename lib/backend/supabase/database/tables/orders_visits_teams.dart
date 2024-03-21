import '../database.dart';

class OrdersVisitsTeamsTable extends SupabaseTable<OrdersVisitsTeamsRow> {
  @override
  String get tableName => 'ordersVisitsTeams';

  @override
  OrdersVisitsTeamsRow createRow(Map<String, dynamic> data) =>
      OrdersVisitsTeamsRow(data);
}

class OrdersVisitsTeamsRow extends SupabaseDataRow {
  OrdersVisitsTeamsRow(super.data);

  @override
  SupabaseTable get table => OrdersVisitsTeamsTable();

  int get orderVisitId => getField<int>('orderVisitId')!;
  set orderVisitId(int value) => setField<int>('orderVisitId', value);

  int get userId => getField<int>('userId')!;
  set userId(int value) => setField<int>('userId', value);

  bool? get isLeader => getField<bool>('isLeader');
  set isLeader(bool? value) => setField<bool>('isLeader', value);

  int? get orderParentId => getField<int>('orderParentId');
  set orderParentId(int? value) => setField<int>('orderParentId', value);

  int? get orderId => getField<int>('orderId');
  set orderId(int? value) => setField<int>('orderId', value);
}

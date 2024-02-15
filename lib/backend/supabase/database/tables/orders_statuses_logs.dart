import '../database.dart';

class OrdersStatusesLogsTable extends SupabaseTable<OrdersStatusesLogsRow> {
  @override
  String get tableName => 'ordersStatusesLogs';

  @override
  OrdersStatusesLogsRow createRow(Map<String, dynamic> data) =>
      OrdersStatusesLogsRow(data);
}

class OrdersStatusesLogsRow extends SupabaseDataRow {
  OrdersStatusesLogsRow(super.data);

  @override
  SupabaseTable get table => OrdersStatusesLogsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get orderId => getField<int>('orderId');
  set orderId(int? value) => setField<int>('orderId', value);

  int? get orderStatusId => getField<int>('orderStatusId');
  set orderStatusId(int? value) => setField<int>('orderStatusId', value);

  DateTime? get orderStatusDate => getField<DateTime>('orderStatusDate');
  set orderStatusDate(DateTime? value) =>
      setField<DateTime>('orderStatusDate', value);

  int? get createdUserId => getField<int>('createdUserId');
  set createdUserId(int? value) => setField<int>('createdUserId', value);

  DateTime? get createdDate => getField<DateTime>('createdDate');
  set createdDate(DateTime? value) => setField<DateTime>('createdDate', value);

  int? get orderParentId => getField<int>('orderParentId');
  set orderParentId(int? value) => setField<int>('orderParentId', value);

  int? get companyId => getField<int>('companyId');
  set companyId(int? value) => setField<int>('companyId', value);

  int? get departmentId => getField<int>('departmentId');
  set departmentId(int? value) => setField<int>('departmentId', value);
}

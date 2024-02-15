import '../database.dart';

class OrdersActivitiesTable extends SupabaseTable<OrdersActivitiesRow> {
  @override
  String get tableName => 'ordersActivities';

  @override
  OrdersActivitiesRow createRow(Map<String, dynamic> data) =>
      OrdersActivitiesRow(data);
}

class OrdersActivitiesRow extends SupabaseDataRow {
  OrdersActivitiesRow(super.data);

  @override
  SupabaseTable get table => OrdersActivitiesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get companyId => getField<int>('companyId');
  set companyId(int? value) => setField<int>('companyId', value);

  int? get departmentId => getField<int>('departmentId');
  set departmentId(int? value) => setField<int>('departmentId', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('isAvailable');
  set isAvailable(bool? value) => setField<bool>('isAvailable', value);
}

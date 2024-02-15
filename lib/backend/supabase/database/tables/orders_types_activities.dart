import '../database.dart';

class OrdersTypesActivitiesTable
    extends SupabaseTable<OrdersTypesActivitiesRow> {
  @override
  String get tableName => 'ordersTypesActivities';

  @override
  OrdersTypesActivitiesRow createRow(Map<String, dynamic> data) =>
      OrdersTypesActivitiesRow(data);
}

class OrdersTypesActivitiesRow extends SupabaseDataRow {
  OrdersTypesActivitiesRow(super.data);

  @override
  SupabaseTable get table => OrdersTypesActivitiesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get orderTypeId => getField<int>('orderTypeId');
  set orderTypeId(int? value) => setField<int>('orderTypeId', value);

  int? get activityId => getField<int>('activityId');
  set activityId(int? value) => setField<int>('activityId', value);

  bool? get isAvailable => getField<bool>('isAvailable');
  set isAvailable(bool? value) => setField<bool>('isAvailable', value);
}

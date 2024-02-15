import '../database.dart';

class OrdersVisitsAssetsActivitiesTable
    extends SupabaseTable<OrdersVisitsAssetsActivitiesRow> {
  @override
  String get tableName => 'ordersVisitsAssetsActivities';

  @override
  OrdersVisitsAssetsActivitiesRow createRow(Map<String, dynamic> data) =>
      OrdersVisitsAssetsActivitiesRow(data);
}

class OrdersVisitsAssetsActivitiesRow extends SupabaseDataRow {
  OrdersVisitsAssetsActivitiesRow(super.data);

  @override
  SupabaseTable get table => OrdersVisitsAssetsActivitiesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get orderVisitId => getField<int>('orderVisitId')!;
  set orderVisitId(int value) => setField<int>('orderVisitId', value);

  int get orderTypeId => getField<int>('orderTypeId')!;
  set orderTypeId(int value) => setField<int>('orderTypeId', value);

  int get assetId => getField<int>('assetId')!;
  set assetId(int value) => setField<int>('assetId', value);

  int get activityId => getField<int>('activityId')!;
  set activityId(int value) => setField<int>('activityId', value);

  int? get amount => getField<int>('amount');
  set amount(int? value) => setField<int>('amount', value);
}

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

  int get activityId => getField<int>('activityId')!;
  set activityId(int value) => setField<int>('activityId', value);

  int get orderVisitAssetId => getField<int>('orderVisitAssetId')!;
  set orderVisitAssetId(int value) => setField<int>('orderVisitAssetId', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  int? get orderVisitId => getField<int>('orderVisitId');
  set orderVisitId(int? value) => setField<int>('orderVisitId', value);

  int? get orderId => getField<int>('orderId');
  set orderId(int? value) => setField<int>('orderId', value);

  int? get orderParentId => getField<int>('orderParentId');
  set orderParentId(int? value) => setField<int>('orderParentId', value);
}

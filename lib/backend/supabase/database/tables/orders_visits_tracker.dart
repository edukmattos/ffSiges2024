import '../database.dart';

class OrdersVisitsTrackerTable extends SupabaseTable<OrdersVisitsTrackerRow> {
  @override
  String get tableName => 'ordersVisitsTracker';

  @override
  OrdersVisitsTrackerRow createRow(Map<String, dynamic> data) =>
      OrdersVisitsTrackerRow(data);
}

class OrdersVisitsTrackerRow extends SupabaseDataRow {
  OrdersVisitsTrackerRow(super.data);

  @override
  SupabaseTable get table => OrdersVisitsTrackerTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get userId => getField<int>('userId')!;
  set userId(int value) => setField<int>('userId', value);

  int? get orderVisitId => getField<int>('orderVisitId');
  set orderVisitId(int? value) => setField<int>('orderVisitId', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  DateTime? get createdDate => getField<DateTime>('createdDate');
  set createdDate(DateTime? value) => setField<DateTime>('createdDate', value);

  String? get device => getField<String>('device');
  set device(String? value) => setField<String>('device', value);

  int? get orderId => getField<int>('orderId');
  set orderId(int? value) => setField<int>('orderId', value);

  int? get orderParentId => getField<int>('orderParentId');
  set orderParentId(int? value) => setField<int>('orderParentId', value);
}

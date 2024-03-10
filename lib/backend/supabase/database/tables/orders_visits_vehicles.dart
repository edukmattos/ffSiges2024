import '../database.dart';

class OrdersVisitsVehiclesTable extends SupabaseTable<OrdersVisitsVehiclesRow> {
  @override
  String get tableName => 'ordersVisitsVehicles';

  @override
  OrdersVisitsVehiclesRow createRow(Map<String, dynamic> data) =>
      OrdersVisitsVehiclesRow(data);
}

class OrdersVisitsVehiclesRow extends SupabaseDataRow {
  OrdersVisitsVehiclesRow(super.data);

  @override
  SupabaseTable get table => OrdersVisitsVehiclesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get orderVisitId => getField<int>('orderVisitId')!;
  set orderVisitId(int value) => setField<int>('orderVisitId', value);

  int get vehicleId => getField<int>('vehicleId')!;
  set vehicleId(int value) => setField<int>('vehicleId', value);

  int? get recorderStart => getField<int>('recorderStart');
  set recorderStart(int? value) => setField<int>('recorderStart', value);

  int? get recorderEnd => getField<int>('recorderEnd');
  set recorderEnd(int? value) => setField<int>('recorderEnd', value);

  int? get amountUnit => getField<int>('amountUnit');
  set amountUnit(int? value) => setField<int>('amountUnit', value);

  double? get priceUnit => getField<double>('priceUnit');
  set priceUnit(double? value) => setField<double>('priceUnit', value);

  double? get priceTotal => getField<double>('priceTotal');
  set priceTotal(double? value) => setField<double>('priceTotal', value);

  double? get discount => getField<double>('discount');
  set discount(double? value) => setField<double>('discount', value);

  int? get createdUserId => getField<int>('createdUserId');
  set createdUserId(int? value) => setField<int>('createdUserId', value);

  DateTime? get createdDate => getField<DateTime>('createdDate');
  set createdDate(DateTime? value) => setField<DateTime>('createdDate', value);

  int? get deletedUserId => getField<int>('deletedUserId');
  set deletedUserId(int? value) => setField<int>('deletedUserId', value);

  DateTime? get deletedDate => getField<DateTime>('deletedDate');
  set deletedDate(DateTime? value) => setField<DateTime>('deletedDate', value);

  int? get updatedUserId => getField<int>('updatedUserId');
  set updatedUserId(int? value) => setField<int>('updatedUserId', value);

  DateTime? get updatedDate => getField<DateTime>('updatedDate');
  set updatedDate(DateTime? value) => setField<DateTime>('updatedDate', value);

  bool? get isDeleted => getField<bool>('isDeleted');
  set isDeleted(bool? value) => setField<bool>('isDeleted', value);
}

import '../database.dart';

class OrdersVisitsServicesTable extends SupabaseTable<OrdersVisitsServicesRow> {
  @override
  String get tableName => 'ordersVisitsServices';

  @override
  OrdersVisitsServicesRow createRow(Map<String, dynamic> data) =>
      OrdersVisitsServicesRow(data);
}

class OrdersVisitsServicesRow extends SupabaseDataRow {
  OrdersVisitsServicesRow(super.data);

  @override
  SupabaseTable get table => OrdersVisitsServicesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get orderVisitId => getField<int>('orderVisitId')!;
  set orderVisitId(int value) => setField<int>('orderVisitId', value);

  int get serviceId => getField<int>('serviceId')!;
  set serviceId(int value) => setField<int>('serviceId', value);

  double? get priceUnit => getField<double>('priceUnit');
  set priceUnit(double? value) => setField<double>('priceUnit', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  double? get discount => getField<double>('discount');
  set discount(double? value) => setField<double>('discount', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);
}

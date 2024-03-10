import '../database.dart';

class VOrdersVisitsVehiclesTable
    extends SupabaseTable<VOrdersVisitsVehiclesRow> {
  @override
  String get tableName => 'v_orders_visits_vehicles';

  @override
  VOrdersVisitsVehiclesRow createRow(Map<String, dynamic> data) =>
      VOrdersVisitsVehiclesRow(data);
}

class VOrdersVisitsVehiclesRow extends SupabaseDataRow {
  VOrdersVisitsVehiclesRow(super.data);

  @override
  SupabaseTable get table => VOrdersVisitsVehiclesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get orderVisitId => getField<int>('orderVisitId');
  set orderVisitId(int? value) => setField<int>('orderVisitId', value);

  int? get vehicleId => getField<int>('vehicleId');
  set vehicleId(int? value) => setField<int>('vehicleId', value);

  String? get vehicleDescription => getField<String>('vehicleDescription');
  set vehicleDescription(String? value) =>
      setField<String>('vehicleDescription', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

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
}

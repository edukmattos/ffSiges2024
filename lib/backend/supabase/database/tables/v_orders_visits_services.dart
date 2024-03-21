import '../database.dart';

class VOrdersVisitsServicesTable
    extends SupabaseTable<VOrdersVisitsServicesRow> {
  @override
  String get tableName => 'v_orders_visits_services';

  @override
  VOrdersVisitsServicesRow createRow(Map<String, dynamic> data) =>
      VOrdersVisitsServicesRow(data);
}

class VOrdersVisitsServicesRow extends SupabaseDataRow {
  VOrdersVisitsServicesRow(super.data);

  @override
  SupabaseTable get table => VOrdersVisitsServicesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get orderVisitId => getField<int>('orderVisitId');
  set orderVisitId(int? value) => setField<int>('orderVisitId', value);

  int? get serviceId => getField<int>('serviceId');
  set serviceId(int? value) => setField<int>('serviceId', value);

  String? get serviceDescription => getField<String>('serviceDescription');
  set serviceDescription(String? value) =>
      setField<String>('serviceDescription', value);

  String? get serviceUnit => getField<String>('serviceUnit');
  set serviceUnit(String? value) => setField<String>('serviceUnit', value);

  double? get priceUnit => getField<double>('priceUnit');
  set priceUnit(double? value) => setField<double>('priceUnit', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  double? get discount => getField<double>('discount');
  set discount(double? value) => setField<double>('discount', value);

  double? get priceTotal => getField<double>('priceTotal');
  set priceTotal(double? value) => setField<double>('priceTotal', value);
}

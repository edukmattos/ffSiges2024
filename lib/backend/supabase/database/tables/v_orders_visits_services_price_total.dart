import '../database.dart';

class VOrdersVisitsServicesPriceTotalTable
    extends SupabaseTable<VOrdersVisitsServicesPriceTotalRow> {
  @override
  String get tableName => 'v_orders_visits_services_price_total';

  @override
  VOrdersVisitsServicesPriceTotalRow createRow(Map<String, dynamic> data) =>
      VOrdersVisitsServicesPriceTotalRow(data);
}

class VOrdersVisitsServicesPriceTotalRow extends SupabaseDataRow {
  VOrdersVisitsServicesPriceTotalRow(super.data);

  @override
  SupabaseTable get table => VOrdersVisitsServicesPriceTotalTable();

  int? get orderVisitId => getField<int>('orderVisitId');
  set orderVisitId(int? value) => setField<int>('orderVisitId', value);

  double? get priceServices => getField<double>('priceServices');
  set priceServices(double? value) => setField<double>('priceServices', value);
}

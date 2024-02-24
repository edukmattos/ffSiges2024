import '../database.dart';

class VContractsServicesTable extends SupabaseTable<VContractsServicesRow> {
  @override
  String get tableName => 'v_contracts_services';

  @override
  VContractsServicesRow createRow(Map<String, dynamic> data) =>
      VContractsServicesRow(data);
}

class VContractsServicesRow extends SupabaseDataRow {
  VContractsServicesRow(super.data);

  @override
  SupabaseTable get table => VContractsServicesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get contractId => getField<int>('contractId');
  set contractId(int? value) => setField<int>('contractId', value);

  int? get serviceId => getField<int>('serviceId');
  set serviceId(int? value) => setField<int>('serviceId', value);

  String? get serviceDescription => getField<String>('serviceDescription');
  set serviceDescription(String? value) =>
      setField<String>('serviceDescription', value);

  String? get serviceUnit => getField<String>('serviceUnit');
  set serviceUnit(String? value) => setField<String>('serviceUnit', value);

  double? get servicePriceUnit => getField<double>('servicePriceUnit');
  set servicePriceUnit(double? value) =>
      setField<double>('servicePriceUnit', value);
}

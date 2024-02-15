import '../database.dart';

class ContractsServicesTable extends SupabaseTable<ContractsServicesRow> {
  @override
  String get tableName => 'contractsServices';

  @override
  ContractsServicesRow createRow(Map<String, dynamic> data) =>
      ContractsServicesRow(data);
}

class ContractsServicesRow extends SupabaseDataRow {
  ContractsServicesRow(super.data);

  @override
  SupabaseTable get table => ContractsServicesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get contractId => getField<int>('contractId');
  set contractId(int? value) => setField<int>('contractId', value);

  int? get serviceId => getField<int>('serviceId');
  set serviceId(int? value) => setField<int>('serviceId', value);

  double? get unitPrice => getField<double>('unitPrice');
  set unitPrice(double? value) => setField<double>('unitPrice', value);
}

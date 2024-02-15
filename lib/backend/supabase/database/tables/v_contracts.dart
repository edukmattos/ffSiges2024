import '../database.dart';

class VContractsTable extends SupabaseTable<VContractsRow> {
  @override
  String get tableName => 'v_contracts';

  @override
  VContractsRow createRow(Map<String, dynamic> data) => VContractsRow(data);
}

class VContractsRow extends SupabaseDataRow {
  VContractsRow(super.data);

  @override
  SupabaseTable get table => VContractsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get clientCompanyId => getField<int>('clientCompanyId');
  set clientCompanyId(int? value) => setField<int>('clientCompanyId', value);

  int? get clientDepartmentId => getField<int>('clientDepartmentId');
  set clientDepartmentId(int? value) =>
      setField<int>('clientDepartmentId', value);

  int? get providerCompanyId => getField<int>('providerCompanyId');
  set providerCompanyId(int? value) =>
      setField<int>('providerCompanyId', value);

  int? get providerDepartmentId => getField<int>('providerDepartmentId');
  set providerDepartmentId(int? value) =>
      setField<int>('providerDepartmentId', value);

  String? get providerCompanyDescription =>
      getField<String>('providerCompanyDescription');
  set providerCompanyDescription(String? value) =>
      setField<String>('providerCompanyDescription', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}

import '../database.dart';

class ContractsTable extends SupabaseTable<ContractsRow> {
  @override
  String get tableName => 'contracts';

  @override
  ContractsRow createRow(Map<String, dynamic> data) => ContractsRow(data);
}

class ContractsRow extends SupabaseDataRow {
  ContractsRow(super.data);

  @override
  SupabaseTable get table => ContractsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

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

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('isAvailable');
  set isAvailable(bool? value) => setField<bool>('isAvailable', value);

  bool? get isDeleted => getField<bool>('isDeleted');
  set isDeleted(bool? value) => setField<bool>('isDeleted', value);
}

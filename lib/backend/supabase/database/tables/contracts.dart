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

  int? get companyIdClient => getField<int>('companyIdClient');
  set companyIdClient(int? value) => setField<int>('companyIdClient', value);

  int? get departmentIdClient => getField<int>('departmentIdClient');
  set departmentIdClient(int? value) =>
      setField<int>('departmentIdClient', value);

  int? get companyIdProvider => getField<int>('companyIdProvider');
  set companyIdProvider(int? value) =>
      setField<int>('companyIdProvider', value);

  int? get departmentIdProvider => getField<int>('departmentIdProvider');
  set departmentIdProvider(int? value) =>
      setField<int>('departmentIdProvider', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('isAvailable');
  set isAvailable(bool? value) => setField<bool>('isAvailable', value);

  bool? get isDeleted => getField<bool>('isDeleted');
  set isDeleted(bool? value) => setField<bool>('isDeleted', value);
}

import '../database.dart';

class CompaniesTable extends SupabaseTable<CompaniesRow> {
  @override
  String get tableName => 'companies';

  @override
  CompaniesRow createRow(Map<String, dynamic> data) => CompaniesRow(data);
}

class CompaniesRow extends SupabaseDataRow {
  CompaniesRow(super.data);

  @override
  SupabaseTable get table => CompaniesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get imgFilePath => getField<String>('imgFilePath');
  set imgFilePath(String? value) => setField<String>('imgFilePath', value);

  String? get imgFileName => getField<String>('imgFileName');
  set imgFileName(String? value) => setField<String>('imgFileName', value);
}

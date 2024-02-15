import '../database.dart';

class SystemsTable extends SupabaseTable<SystemsRow> {
  @override
  String get tableName => 'systems';

  @override
  SystemsRow createRow(Map<String, dynamic> data) => SystemsRow(data);
}

class SystemsRow extends SupabaseDataRow {
  SystemsRow(super.data);

  @override
  SupabaseTable get table => SystemsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get companyId => getField<int>('companyId');
  set companyId(int? value) => setField<int>('companyId', value);

  int? get parentId => getField<int>('parentId');
  set parentId(int? value) => setField<int>('parentId', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('isAvailable');
  set isAvailable(bool? value) => setField<bool>('isAvailable', value);

  bool? get isDeleted => getField<bool>('isDeleted');
  set isDeleted(bool? value) => setField<bool>('isDeleted', value);
}

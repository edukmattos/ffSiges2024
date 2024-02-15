import '../database.dart';

class AppPagesTable extends SupabaseTable<AppPagesRow> {
  @override
  String get tableName => 'appPages';

  @override
  AppPagesRow createRow(Map<String, dynamic> data) => AppPagesRow(data);
}

class AppPagesRow extends SupabaseDataRow {
  AppPagesRow(super.data);

  @override
  SupabaseTable get table => AppPagesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}

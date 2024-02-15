import '../database.dart';

class AppTable extends SupabaseTable<AppRow> {
  @override
  String get tableName => 'app';

  @override
  AppRow createRow(Map<String, dynamic> data) => AppRow(data);
}

class AppRow extends SupabaseDataRow {
  AppRow(super.data);

  @override
  SupabaseTable get table => AppTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get apkUrl => getField<String>('apkUrl')!;
  set apkUrl(String value) => setField<String>('apkUrl', value);

  String get version => getField<String>('version')!;
  set version(String value) => setField<String>('version', value);

  String? get logoUrl => getField<String>('logoUrl');
  set logoUrl(String? value) => setField<String>('logoUrl', value);
}

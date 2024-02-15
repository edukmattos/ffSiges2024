import '../database.dart';

class AssetsStatusessTable extends SupabaseTable<AssetsStatusessRow> {
  @override
  String get tableName => 'assetsStatusess';

  @override
  AssetsStatusessRow createRow(Map<String, dynamic> data) =>
      AssetsStatusessRow(data);
}

class AssetsStatusessRow extends SupabaseDataRow {
  AssetsStatusessRow(super.data);

  @override
  SupabaseTable get table => AssetsStatusessTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('isAvailable');
  set isAvailable(bool? value) => setField<bool>('isAvailable', value);

  bool? get isDeleted => getField<bool>('isDeleted');
  set isDeleted(bool? value) => setField<bool>('isDeleted', value);
}

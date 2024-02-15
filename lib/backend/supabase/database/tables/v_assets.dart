import '../database.dart';

class VAssetsTable extends SupabaseTable<VAssetsRow> {
  @override
  String get tableName => 'v_assets';

  @override
  VAssetsRow createRow(Map<String, dynamic> data) => VAssetsRow(data);
}

class VAssetsRow extends SupabaseDataRow {
  VAssetsRow(super.data);

  @override
  SupabaseTable get table => VAssetsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get searchable => getField<String>('searchable');
  set searchable(String? value) => setField<String>('searchable', value);

  int? get tagId => getField<int>('tagId');
  set tagId(int? value) => setField<int>('tagId', value);

  String? get tagDescription => getField<String>('tagDescription');
  set tagDescription(String? value) =>
      setField<String>('tagDescription', value);

  int? get tagSubId => getField<int>('tagSubId');
  set tagSubId(int? value) => setField<int>('tagSubId', value);

  String? get tagSubDescription => getField<String>('tagSubDescription');
  set tagSubDescription(String? value) =>
      setField<String>('tagSubDescription', value);

  int? get unitId => getField<int>('unitId');
  set unitId(int? value) => setField<int>('unitId', value);

  String? get unitDescription => getField<String>('unitDescription');
  set unitDescription(String? value) =>
      setField<String>('unitDescription', value);

  int? get statusId => getField<int>('statusId');
  set statusId(int? value) => setField<int>('statusId', value);

  String? get statusDescription => getField<String>('statusDescription');
  set statusDescription(String? value) =>
      setField<String>('statusDescription', value);
}

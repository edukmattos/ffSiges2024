import '../database.dart';

class VAssetsTagsSubsTable extends SupabaseTable<VAssetsTagsSubsRow> {
  @override
  String get tableName => 'v_assets_tags_subs';

  @override
  VAssetsTagsSubsRow createRow(Map<String, dynamic> data) =>
      VAssetsTagsSubsRow(data);
}

class VAssetsTagsSubsRow extends SupabaseDataRow {
  VAssetsTagsSubsRow(super.data);

  @override
  SupabaseTable get table => VAssetsTagsSubsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get companyId => getField<int>('companyId');
  set companyId(int? value) => setField<int>('companyId', value);

  int? get departmentId => getField<int>('departmentId');
  set departmentId(int? value) => setField<int>('departmentId', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('isAvailable');
  set isAvailable(bool? value) => setField<bool>('isAvailable', value);

  bool? get isDeleted => getField<bool>('isDeleted');
  set isDeleted(bool? value) => setField<bool>('isDeleted', value);
}

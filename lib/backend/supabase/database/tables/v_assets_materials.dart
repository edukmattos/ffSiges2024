import '../database.dart';

class VAssetsMaterialsTable extends SupabaseTable<VAssetsMaterialsRow> {
  @override
  String get tableName => 'v_assets_materials';

  @override
  VAssetsMaterialsRow createRow(Map<String, dynamic> data) =>
      VAssetsMaterialsRow(data);
}

class VAssetsMaterialsRow extends SupabaseDataRow {
  VAssetsMaterialsRow(super.data);

  @override
  SupabaseTable get table => VAssetsMaterialsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get assetId => getField<int>('assetId');
  set assetId(int? value) => setField<int>('assetId', value);

  int? get materialId => getField<int>('materialId');
  set materialId(int? value) => setField<int>('materialId', value);

  String? get materialCode => getField<String>('materialCode');
  set materialCode(String? value) => setField<String>('materialCode', value);

  String? get materialDescription => getField<String>('materialDescription');
  set materialDescription(String? value) =>
      setField<String>('materialDescription', value);

  String? get brand => getField<String>('brand');
  set brand(String? value) => setField<String>('brand', value);

  String? get model => getField<String>('model');
  set model(String? value) => setField<String>('model', value);

  String? get serial => getField<String>('serial');
  set serial(String? value) => setField<String>('serial', value);

  String? get localization => getField<String>('localization');
  set localization(String? value) => setField<String>('localization', value);

  int? get amount => getField<int>('amount');
  set amount(int? value) => setField<int>('amount', value);
}

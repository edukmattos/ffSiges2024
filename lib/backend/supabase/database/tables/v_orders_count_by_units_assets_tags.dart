import '../database.dart';

class VOrdersCountByUnitsAssetsTagsTable
    extends SupabaseTable<VOrdersCountByUnitsAssetsTagsRow> {
  @override
  String get tableName => 'v_orders_count_by_units_assets_tags';

  @override
  VOrdersCountByUnitsAssetsTagsRow createRow(Map<String, dynamic> data) =>
      VOrdersCountByUnitsAssetsTagsRow(data);
}

class VOrdersCountByUnitsAssetsTagsRow extends SupabaseDataRow {
  VOrdersCountByUnitsAssetsTagsRow(super.data);

  @override
  SupabaseTable get table => VOrdersCountByUnitsAssetsTagsTable();

  int? get unitId => getField<int>('unitId');
  set unitId(int? value) => setField<int>('unitId', value);

  int? get counterUnitAssetTag => getField<int>('counterUnitAssetTag');
  set counterUnitAssetTag(int? value) =>
      setField<int>('counterUnitAssetTag', value);

  int? get assetTagId => getField<int>('assetTagId');
  set assetTagId(int? value) => setField<int>('assetTagId', value);
}

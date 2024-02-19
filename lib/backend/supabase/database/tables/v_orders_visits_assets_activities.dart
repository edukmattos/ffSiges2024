import '../database.dart';

class VOrdersVisitsAssetsActivitiesTable
    extends SupabaseTable<VOrdersVisitsAssetsActivitiesRow> {
  @override
  String get tableName => 'v_orders_visits_assets_activities';

  @override
  VOrdersVisitsAssetsActivitiesRow createRow(Map<String, dynamic> data) =>
      VOrdersVisitsAssetsActivitiesRow(data);
}

class VOrdersVisitsAssetsActivitiesRow extends SupabaseDataRow {
  VOrdersVisitsAssetsActivitiesRow(super.data);

  @override
  SupabaseTable get table => VOrdersVisitsAssetsActivitiesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get orderVisitAssetId => getField<int>('orderVisitAssetId');
  set orderVisitAssetId(int? value) =>
      setField<int>('orderVisitAssetId', value);

  int? get activityId => getField<int>('activityId');
  set activityId(int? value) => setField<int>('activityId', value);

  String? get activityDescription => getField<String>('activityDescription');
  set activityDescription(String? value) =>
      setField<String>('activityDescription', value);
}

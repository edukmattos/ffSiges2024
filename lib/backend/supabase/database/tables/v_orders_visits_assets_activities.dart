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

  int? get orderVisitId => getField<int>('orderVisitId');
  set orderVisitId(int? value) => setField<int>('orderVisitId', value);

  int? get orderTypeId => getField<int>('orderTypeId');
  set orderTypeId(int? value) => setField<int>('orderTypeId', value);

  int? get assetId => getField<int>('assetId');
  set assetId(int? value) => setField<int>('assetId', value);

  int? get activityId => getField<int>('activityId');
  set activityId(int? value) => setField<int>('activityId', value);

  String? get activityDescription => getField<String>('activityDescription');
  set activityDescription(String? value) =>
      setField<String>('activityDescription', value);
}

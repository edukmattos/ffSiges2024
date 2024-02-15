import '../database.dart';

class VOrdersTypesActivitiesTable
    extends SupabaseTable<VOrdersTypesActivitiesRow> {
  @override
  String get tableName => 'v_orders_types_activities';

  @override
  VOrdersTypesActivitiesRow createRow(Map<String, dynamic> data) =>
      VOrdersTypesActivitiesRow(data);
}

class VOrdersTypesActivitiesRow extends SupabaseDataRow {
  VOrdersTypesActivitiesRow(super.data);

  @override
  SupabaseTable get table => VOrdersTypesActivitiesTable();

  int? get activityId => getField<int>('activityId');
  set activityId(int? value) => setField<int>('activityId', value);

  int? get orderTypeId => getField<int>('orderTypeId');
  set orderTypeId(int? value) => setField<int>('orderTypeId', value);

  String? get activityDescription => getField<String>('activityDescription');
  set activityDescription(String? value) =>
      setField<String>('activityDescription', value);
}

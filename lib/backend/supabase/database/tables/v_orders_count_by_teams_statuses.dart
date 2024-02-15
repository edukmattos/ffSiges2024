import '../database.dart';

class VOrdersCountByTeamsStatusesTable
    extends SupabaseTable<VOrdersCountByTeamsStatusesRow> {
  @override
  String get tableName => 'v_orders_count_by_teams_statuses';

  @override
  VOrdersCountByTeamsStatusesRow createRow(Map<String, dynamic> data) =>
      VOrdersCountByTeamsStatusesRow(data);
}

class VOrdersCountByTeamsStatusesRow extends SupabaseDataRow {
  VOrdersCountByTeamsStatusesRow(super.data);

  @override
  SupabaseTable get table => VOrdersCountByTeamsStatusesTable();

  int? get statusId => getField<int>('statusId');
  set statusId(int? value) => setField<int>('statusId', value);

  int? get teamId => getField<int>('teamId');
  set teamId(int? value) => setField<int>('teamId', value);

  int? get counterStatus => getField<int>('counterStatus');
  set counterStatus(int? value) => setField<int>('counterStatus', value);
}

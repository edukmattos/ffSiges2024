import '../database.dart';

class VOrdersCountByTeamLeadersStatusesOpenTable
    extends SupabaseTable<VOrdersCountByTeamLeadersStatusesOpenRow> {
  @override
  String get tableName => 'v_orders_count_by_team_leaders_statuses_open';

  @override
  VOrdersCountByTeamLeadersStatusesOpenRow createRow(
          Map<String, dynamic> data) =>
      VOrdersCountByTeamLeadersStatusesOpenRow(data);
}

class VOrdersCountByTeamLeadersStatusesOpenRow extends SupabaseDataRow {
  VOrdersCountByTeamLeadersStatusesOpenRow(super.data);

  @override
  SupabaseTable get table => VOrdersCountByTeamLeadersStatusesOpenTable();

  int? get teamLeaderId => getField<int>('teamLeaderId');
  set teamLeaderId(int? value) => setField<int>('teamLeaderId', value);

  int? get counterTeamLeadersStatusOpen =>
      getField<int>('counterTeamLeadersStatusOpen');
  set counterTeamLeadersStatusOpen(int? value) =>
      setField<int>('counterTeamLeadersStatusOpen', value);
}

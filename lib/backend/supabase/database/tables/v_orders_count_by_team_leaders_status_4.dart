import '../database.dart';

class VOrdersCountByTeamLeadersStatus4Table
    extends SupabaseTable<VOrdersCountByTeamLeadersStatus4Row> {
  @override
  String get tableName => 'v_orders_count_by_team_leaders_status_4';

  @override
  VOrdersCountByTeamLeadersStatus4Row createRow(Map<String, dynamic> data) =>
      VOrdersCountByTeamLeadersStatus4Row(data);
}

class VOrdersCountByTeamLeadersStatus4Row extends SupabaseDataRow {
  VOrdersCountByTeamLeadersStatus4Row(super.data);

  @override
  SupabaseTable get table => VOrdersCountByTeamLeadersStatus4Table();

  int? get teamLeaderId => getField<int>('teamLeaderId');
  set teamLeaderId(int? value) => setField<int>('teamLeaderId', value);

  int? get counterTeamLeadersStatus4 =>
      getField<int>('counterTeamLeadersStatus_4');
  set counterTeamLeadersStatus4(int? value) =>
      setField<int>('counterTeamLeadersStatus_4', value);
}

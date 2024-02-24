import '../database.dart';

class VOrdersCountByTeamLeadersStatus5Table
    extends SupabaseTable<VOrdersCountByTeamLeadersStatus5Row> {
  @override
  String get tableName => 'v_orders_count_by_team_leaders_status_5';

  @override
  VOrdersCountByTeamLeadersStatus5Row createRow(Map<String, dynamic> data) =>
      VOrdersCountByTeamLeadersStatus5Row(data);
}

class VOrdersCountByTeamLeadersStatus5Row extends SupabaseDataRow {
  VOrdersCountByTeamLeadersStatus5Row(super.data);

  @override
  SupabaseTable get table => VOrdersCountByTeamLeadersStatus5Table();

  int? get teamLeaderId => getField<int>('teamLeaderId');
  set teamLeaderId(int? value) => setField<int>('teamLeaderId', value);

  int? get counterTeamLeadersStatus5 =>
      getField<int>('counterTeamLeadersStatus_5');
  set counterTeamLeadersStatus5(int? value) =>
      setField<int>('counterTeamLeadersStatus_5', value);
}

import '../database.dart';

class VOrdersCountByTeamLeadersStatus3Table
    extends SupabaseTable<VOrdersCountByTeamLeadersStatus3Row> {
  @override
  String get tableName => 'v_orders_count_by_team_leaders_status_3';

  @override
  VOrdersCountByTeamLeadersStatus3Row createRow(Map<String, dynamic> data) =>
      VOrdersCountByTeamLeadersStatus3Row(data);
}

class VOrdersCountByTeamLeadersStatus3Row extends SupabaseDataRow {
  VOrdersCountByTeamLeadersStatus3Row(super.data);

  @override
  SupabaseTable get table => VOrdersCountByTeamLeadersStatus3Table();

  int? get teamLeaderId => getField<int>('teamLeaderId');
  set teamLeaderId(int? value) => setField<int>('teamLeaderId', value);

  int? get counterTeamLeadersStatus3 =>
      getField<int>('counterTeamLeadersStatus_3');
  set counterTeamLeadersStatus3(int? value) =>
      setField<int>('counterTeamLeadersStatus_3', value);
}

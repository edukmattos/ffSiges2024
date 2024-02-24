import '../database.dart';

class VOrdersCountByTeamLeadersStatus6Table
    extends SupabaseTable<VOrdersCountByTeamLeadersStatus6Row> {
  @override
  String get tableName => 'v_orders_count_by_team_leaders_status_6';

  @override
  VOrdersCountByTeamLeadersStatus6Row createRow(Map<String, dynamic> data) =>
      VOrdersCountByTeamLeadersStatus6Row(data);
}

class VOrdersCountByTeamLeadersStatus6Row extends SupabaseDataRow {
  VOrdersCountByTeamLeadersStatus6Row(super.data);

  @override
  SupabaseTable get table => VOrdersCountByTeamLeadersStatus6Table();

  int? get teamLeaderId => getField<int>('teamLeaderId');
  set teamLeaderId(int? value) => setField<int>('teamLeaderId', value);

  int? get counterTeamLeadersStatus6 =>
      getField<int>('counterTeamLeadersStatus_6');
  set counterTeamLeadersStatus6(int? value) =>
      setField<int>('counterTeamLeadersStatus_6', value);
}

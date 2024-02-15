import '../database.dart';

class VOrdersCountByTeamleadersStatusesOpenTable
    extends SupabaseTable<VOrdersCountByTeamleadersStatusesOpenRow> {
  @override
  String get tableName => 'v_orders_count_by_teamleaders_statuses_open';

  @override
  VOrdersCountByTeamleadersStatusesOpenRow createRow(
          Map<String, dynamic> data) =>
      VOrdersCountByTeamleadersStatusesOpenRow(data);
}

class VOrdersCountByTeamleadersStatusesOpenRow extends SupabaseDataRow {
  VOrdersCountByTeamleadersStatusesOpenRow(super.data);

  @override
  SupabaseTable get table => VOrdersCountByTeamleadersStatusesOpenTable();

  int? get teamLeaderId => getField<int>('teamLeaderId');
  set teamLeaderId(int? value) => setField<int>('teamLeaderId', value);

  int? get counterStatusOpen => getField<int>('counterStatusOpen');
  set counterStatusOpen(int? value) =>
      setField<int>('counterStatusOpen', value);
}

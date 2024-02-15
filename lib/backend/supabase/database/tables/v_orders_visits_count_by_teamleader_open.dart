import '../database.dart';

class VOrdersVisitsCountByTeamleaderOpenTable
    extends SupabaseTable<VOrdersVisitsCountByTeamleaderOpenRow> {
  @override
  String get tableName => 'v_orders_visits_count_by_teamleader_open';

  @override
  VOrdersVisitsCountByTeamleaderOpenRow createRow(Map<String, dynamic> data) =>
      VOrdersVisitsCountByTeamleaderOpenRow(data);
}

class VOrdersVisitsCountByTeamleaderOpenRow extends SupabaseDataRow {
  VOrdersVisitsCountByTeamleaderOpenRow(super.data);

  @override
  SupabaseTable get table => VOrdersVisitsCountByTeamleaderOpenTable();

  int? get teamLeaderId => getField<int>('teamLeaderId');
  set teamLeaderId(int? value) => setField<int>('teamLeaderId', value);

  int? get processingId => getField<int>('processingId');
  set processingId(int? value) => setField<int>('processingId', value);

  int? get counterProcessing => getField<int>('counterProcessing');
  set counterProcessing(int? value) =>
      setField<int>('counterProcessing', value);
}

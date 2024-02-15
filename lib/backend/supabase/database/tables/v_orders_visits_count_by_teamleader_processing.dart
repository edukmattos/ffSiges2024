import '../database.dart';

class VOrdersVisitsCountByTeamleaderProcessingTable
    extends SupabaseTable<VOrdersVisitsCountByTeamleaderProcessingRow> {
  @override
  String get tableName => 'v_orders_visits_count_by_teamleader_processing';

  @override
  VOrdersVisitsCountByTeamleaderProcessingRow createRow(
          Map<String, dynamic> data) =>
      VOrdersVisitsCountByTeamleaderProcessingRow(data);
}

class VOrdersVisitsCountByTeamleaderProcessingRow extends SupabaseDataRow {
  VOrdersVisitsCountByTeamleaderProcessingRow(super.data);

  @override
  SupabaseTable get table => VOrdersVisitsCountByTeamleaderProcessingTable();

  int? get teamLeaderId => getField<int>('teamLeaderId');
  set teamLeaderId(int? value) => setField<int>('teamLeaderId', value);

  int? get processingId => getField<int>('processingId');
  set processingId(int? value) => setField<int>('processingId', value);

  int? get counterProcessing => getField<int>('counterProcessing');
  set counterProcessing(int? value) =>
      setField<int>('counterProcessing', value);
}

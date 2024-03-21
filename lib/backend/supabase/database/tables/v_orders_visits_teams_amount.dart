import '../database.dart';

class VOrdersVisitsTeamsAmountTable
    extends SupabaseTable<VOrdersVisitsTeamsAmountRow> {
  @override
  String get tableName => 'v_orders_visits_teams_amount';

  @override
  VOrdersVisitsTeamsAmountRow createRow(Map<String, dynamic> data) =>
      VOrdersVisitsTeamsAmountRow(data);
}

class VOrdersVisitsTeamsAmountRow extends SupabaseDataRow {
  VOrdersVisitsTeamsAmountRow(super.data);

  @override
  SupabaseTable get table => VOrdersVisitsTeamsAmountTable();

  int? get orderVisitId => getField<int>('orderVisitId');
  set orderVisitId(int? value) => setField<int>('orderVisitId', value);

  int? get teamAmount => getField<int>('teamAmount');
  set teamAmount(int? value) => setField<int>('teamAmount', value);
}

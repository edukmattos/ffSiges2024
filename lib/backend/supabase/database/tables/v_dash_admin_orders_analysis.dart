import '../database.dart';

class VDashAdminOrdersAnalysisTable
    extends SupabaseTable<VDashAdminOrdersAnalysisRow> {
  @override
  String get tableName => 'v_dash_admin_orders_analysis';

  @override
  VDashAdminOrdersAnalysisRow createRow(Map<String, dynamic> data) =>
      VDashAdminOrdersAnalysisRow(data);
}

class VDashAdminOrdersAnalysisRow extends SupabaseDataRow {
  VDashAdminOrdersAnalysisRow(super.data);

  @override
  SupabaseTable get table => VDashAdminOrdersAnalysisTable();

  int? get counterAnalysis => getField<int>('counterAnalysis');
  set counterAnalysis(int? value) => setField<int>('counterAnalysis', value);
}

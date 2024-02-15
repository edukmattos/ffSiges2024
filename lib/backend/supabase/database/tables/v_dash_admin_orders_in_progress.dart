import '../database.dart';

class VDashAdminOrdersInProgressTable
    extends SupabaseTable<VDashAdminOrdersInProgressRow> {
  @override
  String get tableName => 'v_dash_admin_orders_in_progress';

  @override
  VDashAdminOrdersInProgressRow createRow(Map<String, dynamic> data) =>
      VDashAdminOrdersInProgressRow(data);
}

class VDashAdminOrdersInProgressRow extends SupabaseDataRow {
  VDashAdminOrdersInProgressRow(super.data);

  @override
  SupabaseTable get table => VDashAdminOrdersInProgressTable();

  int? get counterInProgress => getField<int>('counterInProgress');
  set counterInProgress(int? value) =>
      setField<int>('counterInProgress', value);
}

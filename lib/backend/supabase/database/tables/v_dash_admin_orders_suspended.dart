import '../database.dart';

class VDashAdminOrdersSuspendedTable
    extends SupabaseTable<VDashAdminOrdersSuspendedRow> {
  @override
  String get tableName => 'v_dash_admin_orders_suspended';

  @override
  VDashAdminOrdersSuspendedRow createRow(Map<String, dynamic> data) =>
      VDashAdminOrdersSuspendedRow(data);
}

class VDashAdminOrdersSuspendedRow extends SupabaseDataRow {
  VDashAdminOrdersSuspendedRow(super.data);

  @override
  SupabaseTable get table => VDashAdminOrdersSuspendedTable();

  int? get counterSuspended => getField<int>('counterSuspended');
  set counterSuspended(int? value) => setField<int>('counterSuspended', value);
}

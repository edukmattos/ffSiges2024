import '../database.dart';

class VDashAdminOrdersScheduledTable
    extends SupabaseTable<VDashAdminOrdersScheduledRow> {
  @override
  String get tableName => 'v_dash_admin_orders_scheduled';

  @override
  VDashAdminOrdersScheduledRow createRow(Map<String, dynamic> data) =>
      VDashAdminOrdersScheduledRow(data);
}

class VDashAdminOrdersScheduledRow extends SupabaseDataRow {
  VDashAdminOrdersScheduledRow(super.data);

  @override
  SupabaseTable get table => VDashAdminOrdersScheduledTable();

  int? get counterScheduled => getField<int>('counterScheduled');
  set counterScheduled(int? value) => setField<int>('counterScheduled', value);
}

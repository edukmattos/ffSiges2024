import '../database.dart';

class VDashAdminOrdersUnscheduleTable
    extends SupabaseTable<VDashAdminOrdersUnscheduleRow> {
  @override
  String get tableName => 'v_dash_admin_orders_unschedule';

  @override
  VDashAdminOrdersUnscheduleRow createRow(Map<String, dynamic> data) =>
      VDashAdminOrdersUnscheduleRow(data);
}

class VDashAdminOrdersUnscheduleRow extends SupabaseDataRow {
  VDashAdminOrdersUnscheduleRow(super.data);

  @override
  SupabaseTable get table => VDashAdminOrdersUnscheduleTable();

  int? get counterUnschedule => getField<int>('counterUnschedule');
  set counterUnschedule(int? value) =>
      setField<int>('counterUnschedule', value);
}

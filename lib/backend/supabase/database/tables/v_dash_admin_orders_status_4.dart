import '../database.dart';

class VDashAdminOrdersStatus4Table
    extends SupabaseTable<VDashAdminOrdersStatus4Row> {
  @override
  String get tableName => 'v_dash_admin_orders_status_4';

  @override
  VDashAdminOrdersStatus4Row createRow(Map<String, dynamic> data) =>
      VDashAdminOrdersStatus4Row(data);
}

class VDashAdminOrdersStatus4Row extends SupabaseDataRow {
  VDashAdminOrdersStatus4Row(super.data);

  @override
  SupabaseTable get table => VDashAdminOrdersStatus4Table();

  int? get counterOrderStatus4 => getField<int>('counterOrderStatus_4');
  set counterOrderStatus4(int? value) =>
      setField<int>('counterOrderStatus_4', value);
}

import '../database.dart';

class VDashAdminOrdersStatus5Table
    extends SupabaseTable<VDashAdminOrdersStatus5Row> {
  @override
  String get tableName => 'v_dash_admin_orders_status_5';

  @override
  VDashAdminOrdersStatus5Row createRow(Map<String, dynamic> data) =>
      VDashAdminOrdersStatus5Row(data);
}

class VDashAdminOrdersStatus5Row extends SupabaseDataRow {
  VDashAdminOrdersStatus5Row(super.data);

  @override
  SupabaseTable get table => VDashAdminOrdersStatus5Table();

  int? get counterOrderStatus5 => getField<int>('counterOrderStatus_5');
  set counterOrderStatus5(int? value) =>
      setField<int>('counterOrderStatus_5', value);
}

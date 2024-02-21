import '../database.dart';

class VDashAdminOrdersStatus6Table
    extends SupabaseTable<VDashAdminOrdersStatus6Row> {
  @override
  String get tableName => 'v_dash_admin_orders_status_6';

  @override
  VDashAdminOrdersStatus6Row createRow(Map<String, dynamic> data) =>
      VDashAdminOrdersStatus6Row(data);
}

class VDashAdminOrdersStatus6Row extends SupabaseDataRow {
  VDashAdminOrdersStatus6Row(super.data);

  @override
  SupabaseTable get table => VDashAdminOrdersStatus6Table();

  int? get counterOrderStatus6 => getField<int>('counterOrderStatus_6');
  set counterOrderStatus6(int? value) =>
      setField<int>('counterOrderStatus_6', value);
}

import '../database.dart';

class VDashAdminOrdersStatus3Table
    extends SupabaseTable<VDashAdminOrdersStatus3Row> {
  @override
  String get tableName => 'v_dash_admin_orders_status_3';

  @override
  VDashAdminOrdersStatus3Row createRow(Map<String, dynamic> data) =>
      VDashAdminOrdersStatus3Row(data);
}

class VDashAdminOrdersStatus3Row extends SupabaseDataRow {
  VDashAdminOrdersStatus3Row(super.data);

  @override
  SupabaseTable get table => VDashAdminOrdersStatus3Table();

  int? get counterOrderStatus3 => getField<int>('counterOrderStatus_3');
  set counterOrderStatus3(int? value) =>
      setField<int>('counterOrderStatus_3', value);
}

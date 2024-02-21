import '../database.dart';

class VDashAdminOrdersStatus2Table
    extends SupabaseTable<VDashAdminOrdersStatus2Row> {
  @override
  String get tableName => 'v_dash_admin_orders_status_2';

  @override
  VDashAdminOrdersStatus2Row createRow(Map<String, dynamic> data) =>
      VDashAdminOrdersStatus2Row(data);
}

class VDashAdminOrdersStatus2Row extends SupabaseDataRow {
  VDashAdminOrdersStatus2Row(super.data);

  @override
  SupabaseTable get table => VDashAdminOrdersStatus2Table();

  int? get counterOrderStatus2 => getField<int>('counterOrderStatus_2');
  set counterOrderStatus2(int? value) =>
      setField<int>('counterOrderStatus_2', value);
}

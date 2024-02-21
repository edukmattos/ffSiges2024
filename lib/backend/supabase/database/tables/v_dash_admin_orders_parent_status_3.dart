import '../database.dart';

class VDashAdminOrdersParentStatus3Table
    extends SupabaseTable<VDashAdminOrdersParentStatus3Row> {
  @override
  String get tableName => 'v_dash_admin_orders_parent_status_3';

  @override
  VDashAdminOrdersParentStatus3Row createRow(Map<String, dynamic> data) =>
      VDashAdminOrdersParentStatus3Row(data);
}

class VDashAdminOrdersParentStatus3Row extends SupabaseDataRow {
  VDashAdminOrdersParentStatus3Row(super.data);

  @override
  SupabaseTable get table => VDashAdminOrdersParentStatus3Table();

  int? get counterOrderParentStatus3 =>
      getField<int>('counterOrderParentStatus_3');
  set counterOrderParentStatus3(int? value) =>
      setField<int>('counterOrderParentStatus_3', value);
}

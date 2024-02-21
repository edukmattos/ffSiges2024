import '../database.dart';

class VDashAdminOrdersParentStatus1Table
    extends SupabaseTable<VDashAdminOrdersParentStatus1Row> {
  @override
  String get tableName => 'v_dash_admin_orders_parent_status_1';

  @override
  VDashAdminOrdersParentStatus1Row createRow(Map<String, dynamic> data) =>
      VDashAdminOrdersParentStatus1Row(data);
}

class VDashAdminOrdersParentStatus1Row extends SupabaseDataRow {
  VDashAdminOrdersParentStatus1Row(super.data);

  @override
  SupabaseTable get table => VDashAdminOrdersParentStatus1Table();

  int? get counterOrderParentStatus1 =>
      getField<int>('counterOrderParentStatus_1');
  set counterOrderParentStatus1(int? value) =>
      setField<int>('counterOrderParentStatus_1', value);
}

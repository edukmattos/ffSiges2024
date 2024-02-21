import '../database.dart';

class VDashAdminOrdersParentStatus4Table
    extends SupabaseTable<VDashAdminOrdersParentStatus4Row> {
  @override
  String get tableName => 'v_dash_admin_orders_parent_status_4';

  @override
  VDashAdminOrdersParentStatus4Row createRow(Map<String, dynamic> data) =>
      VDashAdminOrdersParentStatus4Row(data);
}

class VDashAdminOrdersParentStatus4Row extends SupabaseDataRow {
  VDashAdminOrdersParentStatus4Row(super.data);

  @override
  SupabaseTable get table => VDashAdminOrdersParentStatus4Table();

  int? get counterOrderParentStatus4 =>
      getField<int>('counterOrderParentStatus_4');
  set counterOrderParentStatus4(int? value) =>
      setField<int>('counterOrderParentStatus_4', value);
}

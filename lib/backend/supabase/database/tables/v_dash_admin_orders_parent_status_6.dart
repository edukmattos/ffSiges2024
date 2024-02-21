import '../database.dart';

class VDashAdminOrdersParentStatus6Table
    extends SupabaseTable<VDashAdminOrdersParentStatus6Row> {
  @override
  String get tableName => 'v_dash_admin_orders_parent_status_6';

  @override
  VDashAdminOrdersParentStatus6Row createRow(Map<String, dynamic> data) =>
      VDashAdminOrdersParentStatus6Row(data);
}

class VDashAdminOrdersParentStatus6Row extends SupabaseDataRow {
  VDashAdminOrdersParentStatus6Row(super.data);

  @override
  SupabaseTable get table => VDashAdminOrdersParentStatus6Table();

  int? get counterOrderParentStatus6 =>
      getField<int>('counterOrderParentStatus_6');
  set counterOrderParentStatus6(int? value) =>
      setField<int>('counterOrderParentStatus_6', value);
}

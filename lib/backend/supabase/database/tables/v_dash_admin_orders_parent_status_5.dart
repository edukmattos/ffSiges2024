import '../database.dart';

class VDashAdminOrdersParentStatus5Table
    extends SupabaseTable<VDashAdminOrdersParentStatus5Row> {
  @override
  String get tableName => 'v_dash_admin_orders_parent_status_5';

  @override
  VDashAdminOrdersParentStatus5Row createRow(Map<String, dynamic> data) =>
      VDashAdminOrdersParentStatus5Row(data);
}

class VDashAdminOrdersParentStatus5Row extends SupabaseDataRow {
  VDashAdminOrdersParentStatus5Row(super.data);

  @override
  SupabaseTable get table => VDashAdminOrdersParentStatus5Table();

  int? get counterOrderParentStatus5 =>
      getField<int>('counterOrderParentStatus_5');
  set counterOrderParentStatus5(int? value) =>
      setField<int>('counterOrderParentStatus_5', value);
}

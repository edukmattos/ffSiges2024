import '../database.dart';

class VDashAdminOrdersParentStatus2Table
    extends SupabaseTable<VDashAdminOrdersParentStatus2Row> {
  @override
  String get tableName => 'v_dash_admin_orders_parent_status_2';

  @override
  VDashAdminOrdersParentStatus2Row createRow(Map<String, dynamic> data) =>
      VDashAdminOrdersParentStatus2Row(data);
}

class VDashAdminOrdersParentStatus2Row extends SupabaseDataRow {
  VDashAdminOrdersParentStatus2Row(super.data);

  @override
  SupabaseTable get table => VDashAdminOrdersParentStatus2Table();

  int? get counterOrderParentStatus2 =>
      getField<int>('counterOrderParentStatus_2');
  set counterOrderParentStatus2(int? value) =>
      setField<int>('counterOrderParentStatus_2', value);
}

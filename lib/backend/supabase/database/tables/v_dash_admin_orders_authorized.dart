import '../database.dart';

class VDashAdminOrdersAuthorizedTable
    extends SupabaseTable<VDashAdminOrdersAuthorizedRow> {
  @override
  String get tableName => 'v_dash_admin_orders_authorized';

  @override
  VDashAdminOrdersAuthorizedRow createRow(Map<String, dynamic> data) =>
      VDashAdminOrdersAuthorizedRow(data);
}

class VDashAdminOrdersAuthorizedRow extends SupabaseDataRow {
  VDashAdminOrdersAuthorizedRow(super.data);

  @override
  SupabaseTable get table => VDashAdminOrdersAuthorizedTable();

  int? get counterAuthorized => getField<int>('counterAuthorized');
  set counterAuthorized(int? value) =>
      setField<int>('counterAuthorized', value);
}

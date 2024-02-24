import '../database.dart';

class VDashUserOrdersStatus4Table
    extends SupabaseTable<VDashUserOrdersStatus4Row> {
  @override
  String get tableName => 'v_dash_user_orders_status_4';

  @override
  VDashUserOrdersStatus4Row createRow(Map<String, dynamic> data) =>
      VDashUserOrdersStatus4Row(data);
}

class VDashUserOrdersStatus4Row extends SupabaseDataRow {
  VDashUserOrdersStatus4Row(super.data);

  @override
  SupabaseTable get table => VDashUserOrdersStatus4Table();

  int? get teamLeaderId => getField<int>('teamLeaderId');
  set teamLeaderId(int? value) => setField<int>('teamLeaderId', value);

  int? get counterOrderStatus4 => getField<int>('counterOrderStatus_4');
  set counterOrderStatus4(int? value) =>
      setField<int>('counterOrderStatus_4', value);
}

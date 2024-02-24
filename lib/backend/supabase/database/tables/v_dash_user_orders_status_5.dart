import '../database.dart';

class VDashUserOrdersStatus5Table
    extends SupabaseTable<VDashUserOrdersStatus5Row> {
  @override
  String get tableName => 'v_dash_user_orders_status_5';

  @override
  VDashUserOrdersStatus5Row createRow(Map<String, dynamic> data) =>
      VDashUserOrdersStatus5Row(data);
}

class VDashUserOrdersStatus5Row extends SupabaseDataRow {
  VDashUserOrdersStatus5Row(super.data);

  @override
  SupabaseTable get table => VDashUserOrdersStatus5Table();

  int? get teamLeaderId => getField<int>('teamLeaderId');
  set teamLeaderId(int? value) => setField<int>('teamLeaderId', value);

  int? get counterOrderStatus5 => getField<int>('counterOrderStatus_5');
  set counterOrderStatus5(int? value) =>
      setField<int>('counterOrderStatus_5', value);
}

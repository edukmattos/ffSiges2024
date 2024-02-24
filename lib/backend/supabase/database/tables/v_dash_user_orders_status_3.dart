import '../database.dart';

class VDashUserOrdersStatus3Table
    extends SupabaseTable<VDashUserOrdersStatus3Row> {
  @override
  String get tableName => 'v_dash_user_orders_status_3';

  @override
  VDashUserOrdersStatus3Row createRow(Map<String, dynamic> data) =>
      VDashUserOrdersStatus3Row(data);
}

class VDashUserOrdersStatus3Row extends SupabaseDataRow {
  VDashUserOrdersStatus3Row(super.data);

  @override
  SupabaseTable get table => VDashUserOrdersStatus3Table();

  int? get teamLeaderId => getField<int>('teamLeaderId');
  set teamLeaderId(int? value) => setField<int>('teamLeaderId', value);

  int? get counterOrderStatus3 => getField<int>('counterOrderStatus_3');
  set counterOrderStatus3(int? value) =>
      setField<int>('counterOrderStatus_3', value);
}

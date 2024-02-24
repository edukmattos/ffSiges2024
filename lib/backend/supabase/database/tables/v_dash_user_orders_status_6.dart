import '../database.dart';

class VDashUserOrdersStatus6Table
    extends SupabaseTable<VDashUserOrdersStatus6Row> {
  @override
  String get tableName => 'v_dash_user_orders_status_6';

  @override
  VDashUserOrdersStatus6Row createRow(Map<String, dynamic> data) =>
      VDashUserOrdersStatus6Row(data);
}

class VDashUserOrdersStatus6Row extends SupabaseDataRow {
  VDashUserOrdersStatus6Row(super.data);

  @override
  SupabaseTable get table => VDashUserOrdersStatus6Table();

  int? get teamLeaderId => getField<int>('teamLeaderId');
  set teamLeaderId(int? value) => setField<int>('teamLeaderId', value);

  int? get counterOrderStatus6 => getField<int>('counterOrderStatus_6');
  set counterOrderStatus6(int? value) =>
      setField<int>('counterOrderStatus_6', value);
}

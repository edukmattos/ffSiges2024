import '../database.dart';

class VOrdersFollowersTable extends SupabaseTable<VOrdersFollowersRow> {
  @override
  String get tableName => 'v_orders_followers';

  @override
  VOrdersFollowersRow createRow(Map<String, dynamic> data) =>
      VOrdersFollowersRow(data);
}

class VOrdersFollowersRow extends SupabaseDataRow {
  VOrdersFollowersRow(super.data);

  @override
  SupabaseTable get table => VOrdersFollowersTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get orderId => getField<int>('orderId');
  set orderId(int? value) => setField<int>('orderId', value);

  int? get userId => getField<int>('userId');
  set userId(int? value) => setField<int>('userId', value);
}

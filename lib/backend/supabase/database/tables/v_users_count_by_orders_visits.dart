import '../database.dart';

class VUsersCountByOrdersVisitsTable
    extends SupabaseTable<VUsersCountByOrdersVisitsRow> {
  @override
  String get tableName => 'v_users_count_by_orders_visits';

  @override
  VUsersCountByOrdersVisitsRow createRow(Map<String, dynamic> data) =>
      VUsersCountByOrdersVisitsRow(data);
}

class VUsersCountByOrdersVisitsRow extends SupabaseDataRow {
  VUsersCountByOrdersVisitsRow(super.data);

  @override
  SupabaseTable get table => VUsersCountByOrdersVisitsTable();

  int? get visitId => getField<int>('visitId');
  set visitId(int? value) => setField<int>('visitId', value);

  int? get counterUsers => getField<int>('counterUsers');
  set counterUsers(int? value) => setField<int>('counterUsers', value);
}

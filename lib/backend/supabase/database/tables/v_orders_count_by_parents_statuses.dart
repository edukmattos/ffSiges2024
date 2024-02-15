import '../database.dart';

class VOrdersCountByParentsStatusesTable
    extends SupabaseTable<VOrdersCountByParentsStatusesRow> {
  @override
  String get tableName => 'v_orders_count_by_parents_statuses';

  @override
  VOrdersCountByParentsStatusesRow createRow(Map<String, dynamic> data) =>
      VOrdersCountByParentsStatusesRow(data);
}

class VOrdersCountByParentsStatusesRow extends SupabaseDataRow {
  VOrdersCountByParentsStatusesRow(super.data);

  @override
  SupabaseTable get table => VOrdersCountByParentsStatusesTable();

  int? get parentId => getField<int>('parentId');
  set parentId(int? value) => setField<int>('parentId', value);

  int? get statusId => getField<int>('statusId');
  set statusId(int? value) => setField<int>('statusId', value);

  int? get counterStatus => getField<int>('counterStatus');
  set counterStatus(int? value) => setField<int>('counterStatus', value);
}

import '../database.dart';

class VOrdersCountByParentOpenTable
    extends SupabaseTable<VOrdersCountByParentOpenRow> {
  @override
  String get tableName => 'v_orders_count_by_parent_open';

  @override
  VOrdersCountByParentOpenRow createRow(Map<String, dynamic> data) =>
      VOrdersCountByParentOpenRow(data);
}

class VOrdersCountByParentOpenRow extends SupabaseDataRow {
  VOrdersCountByParentOpenRow(super.data);

  @override
  SupabaseTable get table => VOrdersCountByParentOpenTable();

  int? get statusId => getField<int>('statusId');
  set statusId(int? value) => setField<int>('statusId', value);

  int? get parentId => getField<int>('parentId');
  set parentId(int? value) => setField<int>('parentId', value);

  int? get counterStatus => getField<int>('counterStatus');
  set counterStatus(int? value) => setField<int>('counterStatus', value);
}

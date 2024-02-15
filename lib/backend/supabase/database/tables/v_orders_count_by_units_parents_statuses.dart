import '../database.dart';

class VOrdersCountByUnitsParentsStatusesTable
    extends SupabaseTable<VOrdersCountByUnitsParentsStatusesRow> {
  @override
  String get tableName => 'v_orders_count_by_units_parents_statuses';

  @override
  VOrdersCountByUnitsParentsStatusesRow createRow(Map<String, dynamic> data) =>
      VOrdersCountByUnitsParentsStatusesRow(data);
}

class VOrdersCountByUnitsParentsStatusesRow extends SupabaseDataRow {
  VOrdersCountByUnitsParentsStatusesRow(super.data);

  @override
  SupabaseTable get table => VOrdersCountByUnitsParentsStatusesTable();

  int? get statusId => getField<int>('statusId');
  set statusId(int? value) => setField<int>('statusId', value);

  int? get unitId => getField<int>('unitId');
  set unitId(int? value) => setField<int>('unitId', value);

  int? get counterStatus => getField<int>('counterStatus');
  set counterStatus(int? value) => setField<int>('counterStatus', value);
}

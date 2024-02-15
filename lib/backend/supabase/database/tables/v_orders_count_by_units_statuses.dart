import '../database.dart';

class VOrdersCountByUnitsStatusesTable
    extends SupabaseTable<VOrdersCountByUnitsStatusesRow> {
  @override
  String get tableName => 'v_orders_count_by_units_statuses';

  @override
  VOrdersCountByUnitsStatusesRow createRow(Map<String, dynamic> data) =>
      VOrdersCountByUnitsStatusesRow(data);
}

class VOrdersCountByUnitsStatusesRow extends SupabaseDataRow {
  VOrdersCountByUnitsStatusesRow(super.data);

  @override
  SupabaseTable get table => VOrdersCountByUnitsStatusesTable();

  int? get statusId => getField<int>('statusId');
  set statusId(int? value) => setField<int>('statusId', value);

  int? get unitId => getField<int>('unitId');
  set unitId(int? value) => setField<int>('unitId', value);

  int? get counterStatus => getField<int>('counterStatus');
  set counterStatus(int? value) => setField<int>('counterStatus', value);
}

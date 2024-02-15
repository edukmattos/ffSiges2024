import '../database.dart';

class VOrdersCountByUnitsOpenTable
    extends SupabaseTable<VOrdersCountByUnitsOpenRow> {
  @override
  String get tableName => 'v_orders_count_by_units_open';

  @override
  VOrdersCountByUnitsOpenRow createRow(Map<String, dynamic> data) =>
      VOrdersCountByUnitsOpenRow(data);
}

class VOrdersCountByUnitsOpenRow extends SupabaseDataRow {
  VOrdersCountByUnitsOpenRow(super.data);

  @override
  SupabaseTable get table => VOrdersCountByUnitsOpenTable();

  int? get unitId => getField<int>('unitId');
  set unitId(int? value) => setField<int>('unitId', value);

  int? get counterStatusOpen => getField<int>('counterStatusOpen');
  set counterStatusOpen(int? value) =>
      setField<int>('counterStatusOpen', value);
}

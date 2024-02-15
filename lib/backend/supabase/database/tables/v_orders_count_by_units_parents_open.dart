import '../database.dart';

class VOrdersCountByUnitsParentsOpenTable
    extends SupabaseTable<VOrdersCountByUnitsParentsOpenRow> {
  @override
  String get tableName => 'v_orders_count_by_units_parents_open';

  @override
  VOrdersCountByUnitsParentsOpenRow createRow(Map<String, dynamic> data) =>
      VOrdersCountByUnitsParentsOpenRow(data);
}

class VOrdersCountByUnitsParentsOpenRow extends SupabaseDataRow {
  VOrdersCountByUnitsParentsOpenRow(super.data);

  @override
  SupabaseTable get table => VOrdersCountByUnitsParentsOpenTable();

  int? get unitId => getField<int>('unitId');
  set unitId(int? value) => setField<int>('unitId', value);

  int? get counterStatusOpen => getField<int>('counterStatusOpen');
  set counterStatusOpen(int? value) =>
      setField<int>('counterStatusOpen', value);
}

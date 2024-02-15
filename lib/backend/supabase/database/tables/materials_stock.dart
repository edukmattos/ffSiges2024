import '../database.dart';

class MaterialsStockTable extends SupabaseTable<MaterialsStockRow> {
  @override
  String get tableName => 'materialsStock';

  @override
  MaterialsStockRow createRow(Map<String, dynamic> data) =>
      MaterialsStockRow(data);
}

class MaterialsStockRow extends SupabaseDataRow {
  MaterialsStockRow(super.data);

  @override
  SupabaseTable get table => MaterialsStockTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get material => getField<int>('material')!;
  set material(int value) => setField<int>('material', value);

  int get warehouse => getField<int>('warehouse')!;
  set warehouse(int value) => setField<int>('warehouse', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);
}

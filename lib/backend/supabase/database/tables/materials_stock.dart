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

  int get materialId => getField<int>('materialId')!;
  set materialId(int value) => setField<int>('materialId', value);

  int get warehouse => getField<int>('warehouse')!;
  set warehouse(int value) => setField<int>('warehouse', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  int? get companyId => getField<int>('companyId');
  set companyId(int? value) => setField<int>('companyId', value);
}

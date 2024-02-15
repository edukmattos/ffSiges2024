import '../database.dart';

class OrdersVisitsAssetsMaterialsTable
    extends SupabaseTable<OrdersVisitsAssetsMaterialsRow> {
  @override
  String get tableName => 'ordersVisitsAssetsMaterials';

  @override
  OrdersVisitsAssetsMaterialsRow createRow(Map<String, dynamic> data) =>
      OrdersVisitsAssetsMaterialsRow(data);
}

class OrdersVisitsAssetsMaterialsRow extends SupabaseDataRow {
  OrdersVisitsAssetsMaterialsRow(super.data);

  @override
  SupabaseTable get table => OrdersVisitsAssetsMaterialsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get orderVisitId => getField<int>('orderVisitId')!;
  set orderVisitId(int value) => setField<int>('orderVisitId', value);

  int get assetId => getField<int>('assetId')!;
  set assetId(int value) => setField<int>('assetId', value);

  int get materialId => getField<int>('materialId')!;
  set materialId(int value) => setField<int>('materialId', value);

  int? get amount => getField<int>('amount');
  set amount(int? value) => setField<int>('amount', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  bool? get original => getField<bool>('original');
  set original(bool? value) => setField<bool>('original', value);

  String? get serial => getField<String>('serial');
  set serial(String? value) => setField<String>('serial', value);

  double? get priceTotal => getField<double>('priceTotal');
  set priceTotal(double? value) => setField<double>('priceTotal', value);

  String? get localization => getField<String>('localization');
  set localization(String? value) => setField<String>('localization', value);
}

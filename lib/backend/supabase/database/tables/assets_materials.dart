import '../database.dart';

class AssetsMaterialsTable extends SupabaseTable<AssetsMaterialsRow> {
  @override
  String get tableName => 'assetsMaterials';

  @override
  AssetsMaterialsRow createRow(Map<String, dynamic> data) =>
      AssetsMaterialsRow(data);
}

class AssetsMaterialsRow extends SupabaseDataRow {
  AssetsMaterialsRow(super.data);

  @override
  SupabaseTable get table => AssetsMaterialsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get assetId => getField<int>('assetId');
  set assetId(int? value) => setField<int>('assetId', value);

  int? get materialId => getField<int>('materialId');
  set materialId(int? value) => setField<int>('materialId', value);

  bool? get isOriginal => getField<bool>('isOriginal');
  set isOriginal(bool? value) => setField<bool>('isOriginal', value);

  String? get brand => getField<String>('brand');
  set brand(String? value) => setField<String>('brand', value);

  String? get model => getField<String>('model');
  set model(String? value) => setField<String>('model', value);

  String? get serial => getField<String>('serial');
  set serial(String? value) => setField<String>('serial', value);

  DateTime? get dateIn => getField<DateTime>('dateIn');
  set dateIn(DateTime? value) => setField<DateTime>('dateIn', value);

  DateTime? get dateOut => getField<DateTime>('dateOut');
  set dateOut(DateTime? value) => setField<DateTime>('dateOut', value);

  int? get recorderIn => getField<int>('recorderIn');
  set recorderIn(int? value) => setField<int>('recorderIn', value);

  int? get recorderOut => getField<int>('recorderOut');
  set recorderOut(int? value) => setField<int>('recorderOut', value);

  int? get orderVisitAssetId => getField<int>('orderVisitAssetId');
  set orderVisitAssetId(int? value) =>
      setField<int>('orderVisitAssetId', value);

  int? get amount => getField<int>('amount');
  set amount(int? value) => setField<int>('amount', value);

  String? get localization => getField<String>('localization');
  set localization(String? value) => setField<String>('localization', value);
}

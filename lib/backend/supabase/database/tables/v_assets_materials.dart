import '../database.dart';

class VAssetsMaterialsTable extends SupabaseTable<VAssetsMaterialsRow> {
  @override
  String get tableName => 'v_assets_materials';

  @override
  VAssetsMaterialsRow createRow(Map<String, dynamic> data) =>
      VAssetsMaterialsRow(data);
}

class VAssetsMaterialsRow extends SupabaseDataRow {
  VAssetsMaterialsRow(super.data);

  @override
  SupabaseTable get table => VAssetsMaterialsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get assetId => getField<int>('assetId');
  set assetId(int? value) => setField<int>('assetId', value);

  int? get materialId => getField<int>('materialId');
  set materialId(int? value) => setField<int>('materialId', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get brand => getField<String>('brand');
  set brand(String? value) => setField<String>('brand', value);

  String? get model => getField<String>('model');
  set model(String? value) => setField<String>('model', value);

  String? get serial => getField<String>('serial');
  set serial(String? value) => setField<String>('serial', value);

  String? get localization => getField<String>('localization');
  set localization(String? value) => setField<String>('localization', value);

  int? get amount => getField<int>('amount');
  set amount(int? value) => setField<int>('amount', value);

  bool? get isOriginal => getField<bool>('isOriginal');
  set isOriginal(bool? value) => setField<bool>('isOriginal', value);

  DateTime? get dateIn => getField<DateTime>('dateIn');
  set dateIn(DateTime? value) => setField<DateTime>('dateIn', value);

  DateTime? get dateOut => getField<DateTime>('dateOut');
  set dateOut(DateTime? value) => setField<DateTime>('dateOut', value);

  int? get orderVisitAssetId => getField<int>('orderVisitAssetId');
  set orderVisitAssetId(int? value) =>
      setField<int>('orderVisitAssetId', value);

  int? get recorderIn => getField<int>('recorderIn');
  set recorderIn(int? value) => setField<int>('recorderIn', value);

  int? get recorderOut => getField<int>('recorderOut');
  set recorderOut(int? value) => setField<int>('recorderOut', value);
}

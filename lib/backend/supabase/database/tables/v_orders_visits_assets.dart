import '../database.dart';

class VOrdersVisitsAssetsTable extends SupabaseTable<VOrdersVisitsAssetsRow> {
  @override
  String get tableName => 'v_orders_visits_assets';

  @override
  VOrdersVisitsAssetsRow createRow(Map<String, dynamic> data) =>
      VOrdersVisitsAssetsRow(data);
}

class VOrdersVisitsAssetsRow extends SupabaseDataRow {
  VOrdersVisitsAssetsRow(super.data);

  @override
  SupabaseTable get table => VOrdersVisitsAssetsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get orderVisitId => getField<int>('orderVisitId');
  set orderVisitId(int? value) => setField<int>('orderVisitId', value);

  int? get assetId => getField<int>('assetId');
  set assetId(int? value) => setField<int>('assetId', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isMoved => getField<bool>('isMoved');
  set isMoved(bool? value) => setField<bool>('isMoved', value);

  int? get beforeUnitId => getField<int>('beforeUnitId');
  set beforeUnitId(int? value) => setField<int>('beforeUnitId', value);

  String? get beforeUnitDescription =>
      getField<String>('beforeUnitDescription');
  set beforeUnitDescription(String? value) =>
      setField<String>('beforeUnitDescription', value);

  double? get beforeUnitLatitude => getField<double>('beforeUnitLatitude');
  set beforeUnitLatitude(double? value) =>
      setField<double>('beforeUnitLatitude', value);

  double? get beforeUnitLongitude => getField<double>('beforeUnitLongitude');
  set beforeUnitLongitude(double? value) =>
      setField<double>('beforeUnitLongitude', value);

  int? get beforeTagId => getField<int>('beforeTagId');
  set beforeTagId(int? value) => setField<int>('beforeTagId', value);

  String? get beforeTagDescription => getField<String>('beforeTagDescription');
  set beforeTagDescription(String? value) =>
      setField<String>('beforeTagDescription', value);

  int? get beforeTagSubId => getField<int>('beforeTagSubId');
  set beforeTagSubId(int? value) => setField<int>('beforeTagSubId', value);

  String? get beforeTagSubDescription =>
      getField<String>('beforeTagSubDescription');
  set beforeTagSubDescription(String? value) =>
      setField<String>('beforeTagSubDescription', value);

  int? get beforeStatusId => getField<int>('beforeStatusId');
  set beforeStatusId(int? value) => setField<int>('beforeStatusId', value);

  String? get beforeStatusDescription =>
      getField<String>('beforeStatusDescription');
  set beforeStatusDescription(String? value) =>
      setField<String>('beforeStatusDescription', value);

  String? get beforeComments => getField<String>('beforeComments');
  set beforeComments(String? value) =>
      setField<String>('beforeComments', value);

  String? get beforeImgFilePath => getField<String>('beforeImgFilePath');
  set beforeImgFilePath(String? value) =>
      setField<String>('beforeImgFilePath', value);

  String? get beforeImgFileName => getField<String>('beforeImgFileName');
  set beforeImgFileName(String? value) =>
      setField<String>('beforeImgFileName', value);

  int? get beforeRecord => getField<int>('beforeRecord');
  set beforeRecord(int? value) => setField<int>('beforeRecord', value);

  double? get beforeLatitude => getField<double>('beforeLatitude');
  set beforeLatitude(double? value) =>
      setField<double>('beforeLatitude', value);

  double? get beforeLongitude => getField<double>('beforeLongitude');
  set beforeLongitude(double? value) =>
      setField<double>('beforeLongitude', value);

  int? get afterUnitId => getField<int>('afterUnitId');
  set afterUnitId(int? value) => setField<int>('afterUnitId', value);

  String? get afterUnitDescription => getField<String>('afterUnitDescription');
  set afterUnitDescription(String? value) =>
      setField<String>('afterUnitDescription', value);

  double? get afterUnitLatitude => getField<double>('afterUnitLatitude');
  set afterUnitLatitude(double? value) =>
      setField<double>('afterUnitLatitude', value);

  double? get afterUnitLongitude => getField<double>('afterUnitLongitude');
  set afterUnitLongitude(double? value) =>
      setField<double>('afterUnitLongitude', value);

  int? get afterTagId => getField<int>('afterTagId');
  set afterTagId(int? value) => setField<int>('afterTagId', value);

  String? get afterTagDescription => getField<String>('afterTagDescription');
  set afterTagDescription(String? value) =>
      setField<String>('afterTagDescription', value);

  int? get afterTagSubId => getField<int>('afterTagSubId');
  set afterTagSubId(int? value) => setField<int>('afterTagSubId', value);

  String? get afterTagSubDescription =>
      getField<String>('afterTagSubDescription');
  set afterTagSubDescription(String? value) =>
      setField<String>('afterTagSubDescription', value);

  int? get afterStatusId => getField<int>('afterStatusId');
  set afterStatusId(int? value) => setField<int>('afterStatusId', value);

  String? get afterStatusDescription =>
      getField<String>('afterStatusDescription');
  set afterStatusDescription(String? value) =>
      setField<String>('afterStatusDescription', value);

  String? get afterComments => getField<String>('afterComments');
  set afterComments(String? value) => setField<String>('afterComments', value);

  String? get afterImgFilePath => getField<String>('afterImgFilePath');
  set afterImgFilePath(String? value) =>
      setField<String>('afterImgFilePath', value);

  String? get afterImgFileName => getField<String>('afterImgFileName');
  set afterImgFileName(String? value) =>
      setField<String>('afterImgFileName', value);

  int? get afterRecord => getField<int>('afterRecord');
  set afterRecord(int? value) => setField<int>('afterRecord', value);

  double? get afterLatitude => getField<double>('afterLatitude');
  set afterLatitude(double? value) => setField<double>('afterLatitude', value);

  double? get afterLongitude => getField<double>('afterLongitude');
  set afterLongitude(double? value) =>
      setField<double>('afterLongitude', value);

  int? get processingId => getField<int>('processingId');
  set processingId(int? value) => setField<int>('processingId', value);

  String? get processingDescription =>
      getField<String>('processingDescription');
  set processingDescription(String? value) =>
      setField<String>('processingDescription', value);

  String? get movedComments => getField<String>('movedComments');
  set movedComments(String? value) => setField<String>('movedComments', value);
}

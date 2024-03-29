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

  int? get orderParentId => getField<int>('orderParentId');
  set orderParentId(int? value) => setField<int>('orderParentId', value);

  int? get orderId => getField<int>('orderId');
  set orderId(int? value) => setField<int>('orderId', value);

  int? get orderTypeId => getField<int>('orderTypeId');
  set orderTypeId(int? value) => setField<int>('orderTypeId', value);

  int? get orderVisitId => getField<int>('orderVisitId');
  set orderVisitId(int? value) => setField<int>('orderVisitId', value);

  DateTime? get dateStart => getField<DateTime>('dateStart');
  set dateStart(DateTime? value) => setField<DateTime>('dateStart', value);

  DateTime? get dateEnd => getField<DateTime>('dateEnd');
  set dateEnd(DateTime? value) => setField<DateTime>('dateEnd', value);

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

  String? get beforeUnitCode => getField<String>('beforeUnitCode');
  set beforeUnitCode(String? value) =>
      setField<String>('beforeUnitCode', value);

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

  String? get beforeStatusCode => getField<String>('beforeStatusCode');
  set beforeStatusCode(String? value) =>
      setField<String>('beforeStatusCode', value);

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

  String? get afterUnitCode => getField<String>('afterUnitCode');
  set afterUnitCode(String? value) => setField<String>('afterUnitCode', value);

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

  String? get afterStatusCode => getField<String>('afterStatusCode');
  set afterStatusCode(String? value) =>
      setField<String>('afterStatusCode', value);

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

  int? get reportedUserId => getField<int>('reportedUserId');
  set reportedUserId(int? value) => setField<int>('reportedUserId', value);

  String? get reportedUserNameShort =>
      getField<String>('reportedUserNameShort');
  set reportedUserNameShort(String? value) =>
      setField<String>('reportedUserNameShort', value);

  DateTime? get reportedDate => getField<DateTime>('reportedDate');
  set reportedDate(DateTime? value) =>
      setField<DateTime>('reportedDate', value);

  int? get disapprovedUserId => getField<int>('disapprovedUserId');
  set disapprovedUserId(int? value) =>
      setField<int>('disapprovedUserId', value);

  String? get disapprovedUserNameShort =>
      getField<String>('disapprovedUserNameShort');
  set disapprovedUserNameShort(String? value) =>
      setField<String>('disapprovedUserNameShort', value);

  DateTime? get disapprovedDate => getField<DateTime>('disapprovedDate');
  set disapprovedDate(DateTime? value) =>
      setField<DateTime>('disapprovedDate', value);

  String? get disapprovedNotes => getField<String>('disapprovedNotes');
  set disapprovedNotes(String? value) =>
      setField<String>('disapprovedNotes', value);

  int? get approvedUserId => getField<int>('approvedUserId');
  set approvedUserId(int? value) => setField<int>('approvedUserId', value);

  String? get approvedUserNameShort =>
      getField<String>('approvedUserNameShort');
  set approvedUserNameShort(String? value) =>
      setField<String>('approvedUserNameShort', value);

  DateTime? get approvedDate => getField<DateTime>('approvedDate');
  set approvedDate(DateTime? value) =>
      setField<DateTime>('approvedDate', value);
}

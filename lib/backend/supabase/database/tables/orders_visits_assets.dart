import '../database.dart';

class OrdersVisitsAssetsTable extends SupabaseTable<OrdersVisitsAssetsRow> {
  @override
  String get tableName => 'ordersVisitsAssets';

  @override
  OrdersVisitsAssetsRow createRow(Map<String, dynamic> data) =>
      OrdersVisitsAssetsRow(data);
}

class OrdersVisitsAssetsRow extends SupabaseDataRow {
  OrdersVisitsAssetsRow(super.data);

  @override
  SupabaseTable get table => OrdersVisitsAssetsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get orderVisitId => getField<int>('orderVisitId')!;
  set orderVisitId(int value) => setField<int>('orderVisitId', value);

  int get assetId => getField<int>('assetId')!;
  set assetId(int value) => setField<int>('assetId', value);

  int? get beforeUnitId => getField<int>('beforeUnitId');
  set beforeUnitId(int? value) => setField<int>('beforeUnitId', value);

  int? get beforeTagId => getField<int>('beforeTagId');
  set beforeTagId(int? value) => setField<int>('beforeTagId', value);

  int? get beforeTagSubId => getField<int>('beforeTagSubId');
  set beforeTagSubId(int? value) => setField<int>('beforeTagSubId', value);

  int? get beforeStatusId => getField<int>('beforeStatusId');
  set beforeStatusId(int? value) => setField<int>('beforeStatusId', value);

  String? get beforeComments => getField<String>('beforeComments');
  set beforeComments(String? value) =>
      setField<String>('beforeComments', value);

  String? get beforeImgFilePath => getField<String>('beforeImgFilePath');
  set beforeImgFilePath(String? value) =>
      setField<String>('beforeImgFilePath', value);

  String? get beforeImgFileName => getField<String>('beforeImgFileName');
  set beforeImgFileName(String? value) =>
      setField<String>('beforeImgFileName', value);

  String? get afterComments => getField<String>('afterComments');
  set afterComments(String? value) => setField<String>('afterComments', value);

  String? get afterImgFilePath => getField<String>('afterImgFilePath');
  set afterImgFilePath(String? value) =>
      setField<String>('afterImgFilePath', value);

  String? get afterImgFileName => getField<String>('afterImgFileName');
  set afterImgFileName(String? value) =>
      setField<String>('afterImgFileName', value);

  double? get beforeLatitude => getField<double>('beforeLatitude');
  set beforeLatitude(double? value) =>
      setField<double>('beforeLatitude', value);

  double? get beforeLongitude => getField<double>('beforeLongitude');
  set beforeLongitude(double? value) =>
      setField<double>('beforeLongitude', value);

  double? get afterLatitude => getField<double>('afterLatitude');
  set afterLatitude(double? value) => setField<double>('afterLatitude', value);

  double? get afterLongitude => getField<double>('afterLongitude');
  set afterLongitude(double? value) =>
      setField<double>('afterLongitude', value);

  bool? get isMoved => getField<bool>('isMoved');
  set isMoved(bool? value) => setField<bool>('isMoved', value);

  int? get afterUnitId => getField<int>('afterUnitId');
  set afterUnitId(int? value) => setField<int>('afterUnitId', value);

  int? get afterTagId => getField<int>('afterTagId');
  set afterTagId(int? value) => setField<int>('afterTagId', value);

  int? get afterTagSubId => getField<int>('afterTagSubId');
  set afterTagSubId(int? value) => setField<int>('afterTagSubId', value);

  int? get afterStatusId => getField<int>('afterStatusId');
  set afterStatusId(int? value) => setField<int>('afterStatusId', value);

  int? get beforeRecord => getField<int>('beforeRecord');
  set beforeRecord(int? value) => setField<int>('beforeRecord', value);

  int? get afterRecord => getField<int>('afterRecord');
  set afterRecord(int? value) => setField<int>('afterRecord', value);

  int? get processingId => getField<int>('processingId');
  set processingId(int? value) => setField<int>('processingId', value);

  int? get reportedUserId => getField<int>('reportedUserId');
  set reportedUserId(int? value) => setField<int>('reportedUserId', value);

  DateTime? get reportedDate => getField<DateTime>('reportedDate');
  set reportedDate(DateTime? value) =>
      setField<DateTime>('reportedDate', value);

  int? get disapprovedUserId => getField<int>('disapprovedUserId');
  set disapprovedUserId(int? value) =>
      setField<int>('disapprovedUserId', value);

  DateTime? get disapprovedDate => getField<DateTime>('disapprovedDate');
  set disapprovedDate(DateTime? value) =>
      setField<DateTime>('disapprovedDate', value);

  String? get disapprovedNotes => getField<String>('disapprovedNotes');
  set disapprovedNotes(String? value) =>
      setField<String>('disapprovedNotes', value);

  int? get approvedUserId => getField<int>('approvedUserId');
  set approvedUserId(int? value) => setField<int>('approvedUserId', value);

  DateTime? get approvedDate => getField<DateTime>('approvedDate');
  set approvedDate(DateTime? value) =>
      setField<DateTime>('approvedDate', value);

  String? get movedComments => getField<String>('movedComments');
  set movedComments(String? value) => setField<String>('movedComments', value);

  double? get beforeUnitLatitude => getField<double>('beforeUnitLatitude');
  set beforeUnitLatitude(double? value) =>
      setField<double>('beforeUnitLatitude', value);

  double? get beforeUnitLongitude => getField<double>('beforeUnitLongitude');
  set beforeUnitLongitude(double? value) =>
      setField<double>('beforeUnitLongitude', value);

  double? get afterUnitLatitude => getField<double>('afterUnitLatitude');
  set afterUnitLatitude(double? value) =>
      setField<double>('afterUnitLatitude', value);

  double? get afterUnitLongitude => getField<double>('afterUnitLongitude');
  set afterUnitLongitude(double? value) =>
      setField<double>('afterUnitLongitude', value);

  int? get reportedDateUnix => getField<int>('reportedDateUnix');
  set reportedDateUnix(int? value) => setField<int>('reportedDateUnix', value);

  int? get beforeRecorder => getField<int>('beforeRecorder');
  set beforeRecorder(int? value) => setField<int>('beforeRecorder', value);

  int? get afterRecorder => getField<int>('afterRecorder');
  set afterRecorder(int? value) => setField<int>('afterRecorder', value);

  bool? get isRecorder => getField<bool>('isRecorder');
  set isRecorder(bool? value) => setField<bool>('isRecorder', value);

  double? get createdLatitude => getField<double>('createdLatitude');
  set createdLatitude(double? value) =>
      setField<double>('createdLatitude', value);

  double? get createdLongitude => getField<double>('createdLongitude');
  set createdLongitude(double? value) =>
      setField<double>('createdLongitude', value);
}

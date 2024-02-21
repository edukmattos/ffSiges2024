import '../database.dart';

class OrdersVisitsTable extends SupabaseTable<OrdersVisitsRow> {
  @override
  String get tableName => 'ordersVisits';

  @override
  OrdersVisitsRow createRow(Map<String, dynamic> data) => OrdersVisitsRow(data);
}

class OrdersVisitsRow extends SupabaseDataRow {
  OrdersVisitsRow(super.data);

  @override
  SupabaseTable get table => OrdersVisitsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get visitMask => getField<String>('visitMask');
  set visitMask(String? value) => setField<String>('visitMask', value);

  int? get visitCounter => getField<int>('visitCounter');
  set visitCounter(int? value) => setField<int>('visitCounter', value);

  int get orderId => getField<int>('orderId')!;
  set orderId(int value) => setField<int>('orderId', value);

  int? get approvedUserId => getField<int>('approvedUserId');
  set approvedUserId(int? value) => setField<int>('approvedUserId', value);

  DateTime? get approvedDate => getField<DateTime>('approvedDate');
  set approvedDate(DateTime? value) =>
      setField<DateTime>('approvedDate', value);

  int? get disapprovedUserId => getField<int>('disapprovedUserId');
  set disapprovedUserId(int? value) =>
      setField<int>('disapprovedUserId', value);

  DateTime? get disapprovedDate => getField<DateTime>('disapprovedDate');
  set disapprovedDate(DateTime? value) =>
      setField<DateTime>('disapprovedDate', value);

  DateTime? get dateStart => getField<DateTime>('dateStart');
  set dateStart(DateTime? value) => setField<DateTime>('dateStart', value);

  DateTime? get dateEnd => getField<DateTime>('dateEnd');
  set dateEnd(DateTime? value) => setField<DateTime>('dateEnd', value);

  int? get processingId => getField<int>('processingId');
  set processingId(int? value) => setField<int>('processingId', value);

  int? get statusId => getField<int>('statusId');
  set statusId(int? value) => setField<int>('statusId', value);

  DateTime? get reportedDate => getField<DateTime>('reportedDate');
  set reportedDate(DateTime? value) =>
      setField<DateTime>('reportedDate', value);

  int? get reportedUserId => getField<int>('reportedUserId');
  set reportedUserId(int? value) => setField<int>('reportedUserId', value);

  int? get teamLeaderId => getField<int>('teamLeaderId');
  set teamLeaderId(int? value) => setField<int>('teamLeaderId', value);

  int? get orderVisitAssetsAmount => getField<int>('orderVisitAssetsAmount');
  set orderVisitAssetsAmount(int? value) =>
      setField<int>('orderVisitAssetsAmount', value);

  int? get orderVisitAssetsApprovedAmount =>
      getField<int>('orderVisitAssetsApprovedAmount');
  set orderVisitAssetsApprovedAmount(int? value) =>
      setField<int>('orderVisitAssetsApprovedAmount', value);

  int? get orderVisitAssetsDisapprovedAmount =>
      getField<int>('orderVisitAssetsDisapprovedAmount');
  set orderVisitAssetsDisapprovedAmount(int? value) =>
      setField<int>('orderVisitAssetsDisapprovedAmount', value);

  int? get orderVisitAssetsReportedAmount =>
      getField<int>('orderVisitAssetsReportedAmount');
  set orderVisitAssetsReportedAmount(int? value) =>
      setField<int>('orderVisitAssetsReportedAmount', value);

  double? get priceMaterials => getField<double>('priceMaterials');
  set priceMaterials(double? value) =>
      setField<double>('priceMaterials', value);

  double? get priceServices => getField<double>('priceServices');
  set priceServices(double? value) => setField<double>('priceServices', value);

  double? get priceVehicles => getField<double>('priceVehicles');
  set priceVehicles(double? value) => setField<double>('priceVehicles', value);

  int? get createdUserId => getField<int>('createdUserId');
  set createdUserId(int? value) => setField<int>('createdUserId', value);

  DateTime? get createdDate => getField<DateTime>('createdDate');
  set createdDate(DateTime? value) => setField<DateTime>('createdDate', value);

  int? get updatedUserId => getField<int>('updatedUserId');
  set updatedUserId(int? value) => setField<int>('updatedUserId', value);

  DateTime? get updatedDate => getField<DateTime>('updatedDate');
  set updatedDate(DateTime? value) => setField<DateTime>('updatedDate', value);

  int? get deletedUserId => getField<int>('deletedUserId');
  set deletedUserId(int? value) => setField<int>('deletedUserId', value);

  bool? get isDeleted => getField<bool>('isDeleted');
  set isDeleted(bool? value) => setField<bool>('isDeleted', value);

  int? get orderParentId => getField<int>('orderParentId');
  set orderParentId(int? value) => setField<int>('orderParentId', value);

  double? get durationHours => getField<double>('durationHours');
  set durationHours(double? value) => setField<double>('durationHours', value);

  String? get disapprovedComments => getField<String>('disapprovedComments');
  set disapprovedComments(String? value) =>
      setField<String>('disapprovedComments', value);

  int? get orderVisitAssetsDraftAmount =>
      getField<int>('orderVisitAssetsDraftAmount');
  set orderVisitAssetsDraftAmount(int? value) =>
      setField<int>('orderVisitAssetsDraftAmount', value);

  bool? get isCanceled => getField<bool>('isCanceled');
  set isCanceled(bool? value) => setField<bool>('isCanceled', value);

  String? get comments => getField<String>('comments');
  set comments(String? value) => setField<String>('comments', value);

  int? get orderCancelReasonId => getField<int>('orderCancelReasonId');
  set orderCancelReasonId(int? value) =>
      setField<int>('orderCancelReasonId', value);

  double? get createdLatitude => getField<double>('createdLatitude');
  set createdLatitude(double? value) =>
      setField<double>('createdLatitude', value);

  double? get createdLongitude => getField<double>('createdLongitude');
  set createdLongitude(double? value) =>
      setField<double>('createdLongitude', value);

  double? get priceTotal => getField<double>('priceTotal');
  set priceTotal(double? value) => setField<double>('priceTotal', value);
}

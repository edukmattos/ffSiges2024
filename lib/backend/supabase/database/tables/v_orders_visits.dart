import '../database.dart';

class VOrdersVisitsTable extends SupabaseTable<VOrdersVisitsRow> {
  @override
  String get tableName => 'v_orders_visits';

  @override
  VOrdersVisitsRow createRow(Map<String, dynamic> data) =>
      VOrdersVisitsRow(data);
}

class VOrdersVisitsRow extends SupabaseDataRow {
  VOrdersVisitsRow(super.data);

  @override
  SupabaseTable get table => VOrdersVisitsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get orderId => getField<int>('orderId');
  set orderId(int? value) => setField<int>('orderId', value);

  int? get orderParentId => getField<int>('orderParentId');
  set orderParentId(int? value) => setField<int>('orderParentId', value);

  DateTime? get dateStart => getField<DateTime>('dateStart');
  set dateStart(DateTime? value) => setField<DateTime>('dateStart', value);

  DateTime? get dateEnd => getField<DateTime>('dateEnd');
  set dateEnd(DateTime? value) => setField<DateTime>('dateEnd', value);

  double? get durationHours => getField<double>('durationHours');
  set durationHours(double? value) => setField<double>('durationHours', value);

  int? get statusId => getField<int>('statusId');
  set statusId(int? value) => setField<int>('statusId', value);

  String? get statusDescription => getField<String>('statusDescription');
  set statusDescription(String? value) =>
      setField<String>('statusDescription', value);

  int? get processingId => getField<int>('processingId');
  set processingId(int? value) => setField<int>('processingId', value);

  String? get processingDescription =>
      getField<String>('processingDescription');
  set processingDescription(String? value) =>
      setField<String>('processingDescription', value);

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

  String? get disapprovedComments => getField<String>('disapprovedComments');
  set disapprovedComments(String? value) =>
      setField<String>('disapprovedComments', value);

  int? get approvedUserId => getField<int>('approvedUserId');
  set approvedUserId(int? value) => setField<int>('approvedUserId', value);

  String? get approvedUserNameShort =>
      getField<String>('approvedUserNameShort');
  set approvedUserNameShort(String? value) =>
      setField<String>('approvedUserNameShort', value);

  DateTime? get approvedDate => getField<DateTime>('approvedDate');
  set approvedDate(DateTime? value) =>
      setField<DateTime>('approvedDate', value);

  int? get teamLeaderId => getField<int>('teamLeaderId');
  set teamLeaderId(int? value) => setField<int>('teamLeaderId', value);

  String? get teamLeaderNameShort => getField<String>('teamLeaderNameShort');
  set teamLeaderNameShort(String? value) =>
      setField<String>('teamLeaderNameShort', value);

  int? get orderVisitAssetsAmount => getField<int>('orderVisitAssetsAmount');
  set orderVisitAssetsAmount(int? value) =>
      setField<int>('orderVisitAssetsAmount', value);

  bool? get isCanceled => getField<bool>('isCanceled');
  set isCanceled(bool? value) => setField<bool>('isCanceled', value);

  int? get orderCancelReasonId => getField<int>('orderCancelReasonId');
  set orderCancelReasonId(int? value) =>
      setField<int>('orderCancelReasonId', value);

  String? get orderCancelReasonDescription =>
      getField<String>('orderCancelReasonDescription');
  set orderCancelReasonDescription(String? value) =>
      setField<String>('orderCancelReasonDescription', value);

  String? get comments => getField<String>('comments');
  set comments(String? value) => setField<String>('comments', value);
}

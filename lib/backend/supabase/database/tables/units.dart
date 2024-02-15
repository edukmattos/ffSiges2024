import '../database.dart';

class UnitsTable extends SupabaseTable<UnitsRow> {
  @override
  String get tableName => 'units';

  @override
  UnitsRow createRow(Map<String, dynamic> data) => UnitsRow(data);
}

class UnitsRow extends SupabaseDataRow {
  UnitsRow(super.data);

  @override
  SupabaseTable get table => UnitsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get companyId => getField<int>('companyId');
  set companyId(int? value) => setField<int>('companyId', value);

  int? get unitTypeId => getField<int>('unitTypeId');
  set unitTypeId(int? value) => setField<int>('unitTypeId', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get addressComplement => getField<String>('addressComplement');
  set addressComplement(String? value) =>
      setField<String>('addressComplement', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

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

  DateTime? get deletedDate => getField<DateTime>('deletedDate');
  set deletedDate(DateTime? value) => setField<DateTime>('deletedDate', value);

  bool? get isDeleted => getField<bool>('isDeleted');
  set isDeleted(bool? value) => setField<bool>('isDeleted', value);

  bool? get isAvailable => getField<bool>('isAvailable');
  set isAvailable(bool? value) => setField<bool>('isAvailable', value);

  String? get descriptionFull => getField<String>('descriptionFull');
  set descriptionFull(String? value) =>
      setField<String>('descriptionFull', value);

  int? get unitTypeParentId => getField<int>('unitTypeParentId');
  set unitTypeParentId(int? value) => setField<int>('unitTypeParentId', value);

  int? get systemParentId => getField<int>('systemParentId');
  set systemParentId(int? value) => setField<int>('systemParentId', value);

  int? get systemId => getField<int>('systemId');
  set systemId(int? value) => setField<int>('systemId', value);

  int? get counterOrderAnalysis => getField<int>('counter_order_analysis');
  set counterOrderAnalysis(int? value) =>
      setField<int>('counter_order_analysis', value);

  int? get counterOrderAuthorized => getField<int>('counter_order_authorized');
  set counterOrderAuthorized(int? value) =>
      setField<int>('counter_order_authorized', value);

  int? get counterOrderScheduled => getField<int>('counter_order_scheduled');
  set counterOrderScheduled(int? value) =>
      setField<int>('counter_order_scheduled', value);

  int? get counterOrderInProgress => getField<int>('counter_order_in_progress');
  set counterOrderInProgress(int? value) =>
      setField<int>('counter_order_in_progress', value);

  int? get counterOrderSuspended => getField<int>('counter_order_suspended');
  set counterOrderSuspended(int? value) =>
      setField<int>('counter_order_suspended', value);

  int? get counterOrderCompleted => getField<int>('counter_order_completed');
  set counterOrderCompleted(int? value) =>
      setField<int>('counter_order_completed', value);

  String? get addressFull => getField<String>('addressFull');
  set addressFull(String? value) => setField<String>('addressFull', value);
}

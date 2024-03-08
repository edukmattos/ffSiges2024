import '../database.dart';

class OrdersTable extends SupabaseTable<OrdersRow> {
  @override
  String get tableName => 'orders';

  @override
  OrdersRow createRow(Map<String, dynamic> data) => OrdersRow(data);
}

class OrdersRow extends SupabaseDataRow {
  OrdersRow(super.data);

  @override
  SupabaseTable get table => OrdersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get companyId => getField<int>('companyId');
  set companyId(int? value) => setField<int>('companyId', value);

  int? get departmentId => getField<int>('departmentId');
  set departmentId(int? value) => setField<int>('departmentId', value);

  int? get parentId => getField<int>('parentId');
  set parentId(int? value) => setField<int>('parentId', value);

  int? get typeId => getField<int>('typeId');
  set typeId(int? value) => setField<int>('typeId', value);

  int? get typeSubId => getField<int>('typeSubId');
  set typeSubId(int? value) => setField<int>('typeSubId', value);

  int? get teamLeaderId => getField<int>('teamLeaderId');
  set teamLeaderId(int? value) => setField<int>('teamLeaderId', value);

  DateTime? get expectedDateStart => getField<DateTime>('expectedDateStart');
  set expectedDateStart(DateTime? value) =>
      setField<DateTime>('expectedDateStart', value);

  int? get expectedDurationHours => getField<int>('expectedDurationHours');
  set expectedDurationHours(int? value) =>
      setField<int>('expectedDurationHours', value);

  int? get statusId => getField<int>('statusId');
  set statusId(int? value) => setField<int>('statusId', value);

  DateTime? get statusDate => getField<DateTime>('statusDate');
  set statusDate(DateTime? value) => setField<DateTime>('statusDate', value);

  int? get unitId => getField<int>('unitId');
  set unitId(int? value) => setField<int>('unitId', value);

  int? get systemParentId => getField<int>('systemParentId');
  set systemParentId(int? value) => setField<int>('systemParentId', value);

  int? get systemId => getField<int>('systemId');
  set systemId(int? value) => setField<int>('systemId', value);

  int? get unitTypeParentId => getField<int>('unitTypeParentId');
  set unitTypeParentId(int? value) => setField<int>('unitTypeParentId', value);

  int? get unitTypeId => getField<int>('unitTypeId');
  set unitTypeId(int? value) => setField<int>('unitTypeId', value);

  String? get requesterName => getField<String>('requesterName');
  set requesterName(String? value) => setField<String>('requesterName', value);

  int? get requesterTeamId => getField<int>('requesterTeamId');
  set requesterTeamId(int? value) => setField<int>('requesterTeamId', value);

  String? get requesterPhone => getField<String>('requesterPhone');
  set requesterPhone(String? value) =>
      setField<String>('requesterPhone', value);

  int? get createdUserId => getField<int>('createdUserId');
  set createdUserId(int? value) => setField<int>('createdUserId', value);

  DateTime? get createdDate => getField<DateTime>('createdDate');
  set createdDate(DateTime? value) => setField<DateTime>('createdDate', value);

  String? get requestedServices => getField<String>('requestedServices');
  set requestedServices(String? value) =>
      setField<String>('requestedServices', value);

  int? get counterParent => getField<int>('counterParent');
  set counterParent(int? value) => setField<int>('counterParent', value);

  int? get counterChild => getField<int>('counterChild');
  set counterChild(int? value) => setField<int>('counterChild', value);

  int? get year => getField<int>('year');
  set year(int? value) => setField<int>('year', value);

  String? get orderMask => getField<String>('orderMask');
  set orderMask(String? value) => setField<String>('orderMask', value);

  DateTime? get requesterDate => getField<DateTime>('requesterDate');
  set requesterDate(DateTime? value) =>
      setField<DateTime>('requesterDate', value);

  int? get priorityId => getField<int>('priorityId');
  set priorityId(int? value) => setField<int>('priorityId', value);

  int? get teamId => getField<int>('teamId');
  set teamId(int? value) => setField<int>('teamId', value);

  bool? get isDeleted => getField<bool>('isDeleted');
  set isDeleted(bool? value) => setField<bool>('isDeleted', value);

  double? get unitLatitude => getField<double>('unitLatitude');
  set unitLatitude(double? value) => setField<double>('unitLatitude', value);

  double? get unitLongitude => getField<double>('unitLongitude');
  set unitLongitude(double? value) => setField<double>('unitLongitude', value);

  int? get contractId => getField<int>('contractId');
  set contractId(int? value) => setField<int>('contractId', value);

  int? get providerCompanyId => getField<int>('providerCompanyId');
  set providerCompanyId(int? value) =>
      setField<int>('providerCompanyId', value);

  int? get assetTagId => getField<int>('assetTagId');
  set assetTagId(int? value) => setField<int>('assetTagId', value);

  double? get priceMaterials => getField<double>('priceMaterials');
  set priceMaterials(double? value) =>
      setField<double>('priceMaterials', value);

  double? get priceServices => getField<double>('priceServices');
  set priceServices(double? value) => setField<double>('priceServices', value);

  double? get priceVehicles => getField<double>('priceVehicles');
  set priceVehicles(double? value) => setField<double>('priceVehicles', value);

  double? get priceTotal => getField<double>('priceTotal');
  set priceTotal(double? value) => setField<double>('priceTotal', value);

  int? get causeId => getField<int>('causeId');
  set causeId(int? value) => setField<int>('causeId', value);

  int? get cancelReasonId => getField<int>('cancelReasonId');
  set cancelReasonId(int? value) => setField<int>('cancelReasonId', value);
}

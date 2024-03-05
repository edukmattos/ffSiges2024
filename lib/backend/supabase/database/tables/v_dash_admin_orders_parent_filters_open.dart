import '../database.dart';

class VDashAdminOrdersParentFiltersOpenTable
    extends SupabaseTable<VDashAdminOrdersParentFiltersOpenRow> {
  @override
  String get tableName => 'v_dash_admin_orders_parent_filters_open';

  @override
  VDashAdminOrdersParentFiltersOpenRow createRow(Map<String, dynamic> data) =>
      VDashAdminOrdersParentFiltersOpenRow(data);
}

class VDashAdminOrdersParentFiltersOpenRow extends SupabaseDataRow {
  VDashAdminOrdersParentFiltersOpenRow(super.data);

  @override
  SupabaseTable get table => VDashAdminOrdersParentFiltersOpenTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get parentId => getField<int>('parentId');
  set parentId(int? value) => setField<int>('parentId', value);

  int? get companyId => getField<int>('companyId');
  set companyId(int? value) => setField<int>('companyId', value);

  int? get departmentId => getField<int>('departmentId');
  set departmentId(int? value) => setField<int>('departmentId', value);

  int? get contractId => getField<int>('contract_id');
  set contractId(int? value) => setField<int>('contract_id', value);

  String? get contractDescription => getField<String>('contractDescription');
  set contractDescription(String? value) =>
      setField<String>('contractDescription', value);

  String? get orderMask => getField<String>('orderMask');
  set orderMask(String? value) => setField<String>('orderMask', value);

  int? get orderTypeId => getField<int>('order_type_id');
  set orderTypeId(int? value) => setField<int>('order_type_id', value);

  String? get typeCode => getField<String>('typeCode');
  set typeCode(String? value) => setField<String>('typeCode', value);

  int? get orderTypeSubId => getField<int>('order_type_sub_id');
  set orderTypeSubId(int? value) => setField<int>('order_type_sub_id', value);

  String? get typeSubCode => getField<String>('typeSubCode');
  set typeSubCode(String? value) => setField<String>('typeSubCode', value);

  String? get requestedServices => getField<String>('requestedServices');
  set requestedServices(String? value) =>
      setField<String>('requestedServices', value);

  int? get systemParentId => getField<int>('system_parent_id');
  set systemParentId(int? value) => setField<int>('system_parent_id', value);

  String? get systemParentDescription =>
      getField<String>('systemParentDescription');
  set systemParentDescription(String? value) =>
      setField<String>('systemParentDescription', value);

  String? get systemParentCode => getField<String>('systemParentCode');
  set systemParentCode(String? value) =>
      setField<String>('systemParentCode', value);

  int? get systemId => getField<int>('system_id');
  set systemId(int? value) => setField<int>('system_id', value);

  String? get systemDescription => getField<String>('systemDescription');
  set systemDescription(String? value) =>
      setField<String>('systemDescription', value);

  String? get systemCode => getField<String>('systemCode');
  set systemCode(String? value) => setField<String>('systemCode', value);

  int? get unitTypeParentId => getField<int>('unit_type_parent_id');
  set unitTypeParentId(int? value) =>
      setField<int>('unit_type_parent_id', value);

  String? get unitTypeParentDescription =>
      getField<String>('unitTypeParentDescription');
  set unitTypeParentDescription(String? value) =>
      setField<String>('unitTypeParentDescription', value);

  String? get unitTypeParentCode => getField<String>('unitTypeParentCode');
  set unitTypeParentCode(String? value) =>
      setField<String>('unitTypeParentCode', value);

  int? get unitTypeId => getField<int>('unit_type_id');
  set unitTypeId(int? value) => setField<int>('unit_type_id', value);

  String? get unitTypeDescription => getField<String>('unitTypeDescription');
  set unitTypeDescription(String? value) =>
      setField<String>('unitTypeDescription', value);

  String? get unitTypeCode => getField<String>('unitTypeCode');
  set unitTypeCode(String? value) => setField<String>('unitTypeCode', value);

  int? get unitId => getField<int>('unit_id');
  set unitId(int? value) => setField<int>('unit_id', value);

  String? get unitDescription => getField<String>('unitDescription');
  set unitDescription(String? value) =>
      setField<String>('unitDescription', value);

  String? get unitAddress => getField<String>('unitAddress');
  set unitAddress(String? value) => setField<String>('unitAddress', value);

  double? get unitLatitude => getField<double>('unitLatitude');
  set unitLatitude(double? value) => setField<double>('unitLatitude', value);

  double? get unitLongitude => getField<double>('unitLongitude');
  set unitLongitude(double? value) => setField<double>('unitLongitude', value);

  String? get requesterName => getField<String>('requesterName');
  set requesterName(String? value) => setField<String>('requesterName', value);

  String? get requesterPhone => getField<String>('requesterPhone');
  set requesterPhone(String? value) =>
      setField<String>('requesterPhone', value);

  int? get requesterTeamId => getField<int>('requesterTeamId');
  set requesterTeamId(int? value) => setField<int>('requesterTeamId', value);

  String? get requesterTeamCode => getField<String>('requesterTeamCode');
  set requesterTeamCode(String? value) =>
      setField<String>('requesterTeamCode', value);

  DateTime? get requesterDate => getField<DateTime>('requesterDate');
  set requesterDate(DateTime? value) =>
      setField<DateTime>('requesterDate', value);

  int? get statusId => getField<int>('statusId');
  set statusId(int? value) => setField<int>('statusId', value);

  String? get statusCode => getField<String>('statusCode');
  set statusCode(String? value) => setField<String>('statusCode', value);

  String? get statusDescription => getField<String>('statusDescription');
  set statusDescription(String? value) =>
      setField<String>('statusDescription', value);

  DateTime? get statusDate => getField<DateTime>('statusDate');
  set statusDate(DateTime? value) => setField<DateTime>('statusDate', value);

  int? get orderPriorityId => getField<int>('order_priority_id');
  set orderPriorityId(int? value) => setField<int>('order_priority_id', value);

  String? get priorityCode => getField<String>('priorityCode');
  set priorityCode(String? value) => setField<String>('priorityCode', value);

  String? get priorityDescription => getField<String>('priorityDescription');
  set priorityDescription(String? value) =>
      setField<String>('priorityDescription', value);

  int? get teamLeaderId => getField<int>('teamLeaderId');
  set teamLeaderId(int? value) => setField<int>('teamLeaderId', value);

  String? get teamLeaderNameShort => getField<String>('teamLeaderNameShort');
  set teamLeaderNameShort(String? value) =>
      setField<String>('teamLeaderNameShort', value);

  int? get teamId => getField<int>('teamId');
  set teamId(int? value) => setField<int>('teamId', value);

  String? get teamCode => getField<String>('teamCode');
  set teamCode(String? value) => setField<String>('teamCode', value);

  String? get teamDescription => getField<String>('teamDescription');
  set teamDescription(String? value) =>
      setField<String>('teamDescription', value);

  int? get orderAssetTagId => getField<int>('order_asset_tag_id');
  set orderAssetTagId(int? value) => setField<int>('order_asset_tag_id', value);

  String? get assetTagDescription => getField<String>('assetTagDescription');
  set assetTagDescription(String? value) =>
      setField<String>('assetTagDescription', value);

  int? get year => getField<int>('year');
  set year(int? value) => setField<int>('year', value);

  int? get counterParent => getField<int>('counterParent');
  set counterParent(int? value) => setField<int>('counterParent', value);

  int? get counterChild => getField<int>('counterChild');
  set counterChild(int? value) => setField<int>('counterChild', value);
}

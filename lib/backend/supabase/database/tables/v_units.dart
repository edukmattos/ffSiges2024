import '../database.dart';

class VUnitsTable extends SupabaseTable<VUnitsRow> {
  @override
  String get tableName => 'v_units';

  @override
  VUnitsRow createRow(Map<String, dynamic> data) => VUnitsRow(data);
}

class VUnitsRow extends SupabaseDataRow {
  VUnitsRow(super.data);

  @override
  SupabaseTable get table => VUnitsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  int? get companyId => getField<int>('companyId');
  set companyId(int? value) => setField<int>('companyId', value);

  String? get companyCode => getField<String>('companyCode');
  set companyCode(String? value) => setField<String>('companyCode', value);

  String? get companyDescription => getField<String>('companyDescription');
  set companyDescription(String? value) =>
      setField<String>('companyDescription', value);

  int? get systemParentId => getField<int>('systemParentId');
  set systemParentId(int? value) => setField<int>('systemParentId', value);

  String? get systemsParentCode => getField<String>('systemsParentCode');
  set systemsParentCode(String? value) =>
      setField<String>('systemsParentCode', value);

  String? get systemsParentDescription =>
      getField<String>('systemsParentDescription');
  set systemsParentDescription(String? value) =>
      setField<String>('systemsParentDescription', value);

  int? get systemId => getField<int>('systemId');
  set systemId(int? value) => setField<int>('systemId', value);

  String? get systemsChildCode => getField<String>('systemsChildCode');
  set systemsChildCode(String? value) =>
      setField<String>('systemsChildCode', value);

  String? get systemsChildDescription =>
      getField<String>('systemsChildDescription');
  set systemsChildDescription(String? value) =>
      setField<String>('systemsChildDescription', value);

  int? get unitTypeParentId => getField<int>('unitTypeParentId');
  set unitTypeParentId(int? value) => setField<int>('unitTypeParentId', value);

  String? get unitsTypesParentCode => getField<String>('unitsTypesParentCode');
  set unitsTypesParentCode(String? value) =>
      setField<String>('unitsTypesParentCode', value);

  String? get unitsTypesParentDescription =>
      getField<String>('unitsTypesParentDescription');
  set unitsTypesParentDescription(String? value) =>
      setField<String>('unitsTypesParentDescription', value);

  int? get unitTypeId => getField<int>('unitTypeId');
  set unitTypeId(int? value) => setField<int>('unitTypeId', value);

  String? get unitsTypesChildCode => getField<String>('unitsTypesChildCode');
  set unitsTypesChildCode(String? value) =>
      setField<String>('unitsTypesChildCode', value);

  String? get unitsTypesChildDescription =>
      getField<String>('unitsTypesChildDescription');
  set unitsTypesChildDescription(String? value) =>
      setField<String>('unitsTypesChildDescription', value);

  String? get descriptionFull => getField<String>('descriptionFull');
  set descriptionFull(String? value) =>
      setField<String>('descriptionFull', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get addressFull => getField<String>('addressFull');
  set addressFull(String? value) => setField<String>('addressFull', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);
}

import '../database.dart';

class UnitsTypesTable extends SupabaseTable<UnitsTypesRow> {
  @override
  String get tableName => 'unitsTypes';

  @override
  UnitsTypesRow createRow(Map<String, dynamic> data) => UnitsTypesRow(data);
}

class UnitsTypesRow extends SupabaseDataRow {
  UnitsTypesRow(super.data);

  @override
  SupabaseTable get table => UnitsTypesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get companyId => getField<int>('companyId');
  set companyId(int? value) => setField<int>('companyId', value);

  int? get parentId => getField<int>('parentId');
  set parentId(int? value) => setField<int>('parentId', value);

  bool? get isAvailable => getField<bool>('isAvailable');
  set isAvailable(bool? value) => setField<bool>('isAvailable', value);

  int? get deletedUserId => getField<int>('deletedUserId');
  set deletedUserId(int? value) => setField<int>('deletedUserId', value);

  DateTime? get deletedDate => getField<DateTime>('deletedDate');
  set deletedDate(DateTime? value) => setField<DateTime>('deletedDate', value);

  bool? get isDeleted => getField<bool>('isDeleted');
  set isDeleted(bool? value) => setField<bool>('isDeleted', value);
}

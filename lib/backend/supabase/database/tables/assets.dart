import '../database.dart';

class AssetsTable extends SupabaseTable<AssetsRow> {
  @override
  String get tableName => 'assets';

  @override
  AssetsRow createRow(Map<String, dynamic> data) => AssetsRow(data);
}

class AssetsRow extends SupabaseDataRow {
  AssetsRow(super.data);

  @override
  SupabaseTable get table => AssetsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get companyId => getField<int>('companyId');
  set companyId(int? value) => setField<int>('companyId', value);

  int? get unitId => getField<int>('unitId');
  set unitId(int? value) => setField<int>('unitId', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get statusId => getField<int>('statusId');
  set statusId(int? value) => setField<int>('statusId', value);

  int? get tagId => getField<int>('tagId');
  set tagId(int? value) => setField<int>('tagId', value);

  int? get tagSubId => getField<int>('tagSubId');
  set tagSubId(int? value) => setField<int>('tagSubId', value);

  DateTime? get statusDate => getField<DateTime>('statusDate');
  set statusDate(DateTime? value) => setField<DateTime>('statusDate', value);

  int? get typeId => getField<int>('typeId');
  set typeId(int? value) => setField<int>('typeId', value);

  String? get searchable => getField<String>('searchable');
  set searchable(String? value) => setField<String>('searchable', value);
}

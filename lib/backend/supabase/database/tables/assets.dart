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

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  int? get unitId => getField<int>('unit_id');
  set unitId(int? value) => setField<int>('unit_id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get statusId => getField<int>('status_id');
  set statusId(int? value) => setField<int>('status_id', value);

  int? get tagId => getField<int>('tag_id');
  set tagId(int? value) => setField<int>('tag_id', value);

  int? get tagSubId => getField<int>('tag_sub_id');
  set tagSubId(int? value) => setField<int>('tag_sub_id', value);

  DateTime? get statusdDate => getField<DateTime>('statusd_date');
  set statusdDate(DateTime? value) => setField<DateTime>('statusd_date', value);

  int? get typeId => getField<int>('type_id');
  set typeId(int? value) => setField<int>('type_id', value);

  String? get searchable => getField<String>('searchable');
  set searchable(String? value) => setField<String>('searchable', value);
}

import '../database.dart';

class VOrdersVisitsOpenTable extends SupabaseTable<VOrdersVisitsOpenRow> {
  @override
  String get tableName => 'v_orders_visits_open';

  @override
  VOrdersVisitsOpenRow createRow(Map<String, dynamic> data) =>
      VOrdersVisitsOpenRow(data);
}

class VOrdersVisitsOpenRow extends SupabaseDataRow {
  VOrdersVisitsOpenRow(super.data);

  @override
  SupabaseTable get table => VOrdersVisitsOpenTable();

  int? get companyId => getField<int>('companyId');
  set companyId(int? value) => setField<int>('companyId', value);

  int? get departmentId => getField<int>('departmentId');
  set departmentId(int? value) => setField<int>('departmentId', value);

  int? get unitId => getField<int>('unitId');
  set unitId(int? value) => setField<int>('unitId', value);

  int? get teamId => getField<int>('teamId');
  set teamId(int? value) => setField<int>('teamId', value);

  int? get teamLeaderId => getField<int>('teamLeaderId');
  set teamLeaderId(int? value) => setField<int>('teamLeaderId', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get orderId => getField<int>('orderId');
  set orderId(int? value) => setField<int>('orderId', value);

  DateTime? get dateStart => getField<DateTime>('dateStart');
  set dateStart(DateTime? value) => setField<DateTime>('dateStart', value);

  DateTime? get dateEnd => getField<DateTime>('dateEnd');
  set dateEnd(DateTime? value) => setField<DateTime>('dateEnd', value);

  int? get statusId => getField<int>('statusId');
  set statusId(int? value) => setField<int>('statusId', value);

  int? get processingId => getField<int>('processingId');
  set processingId(int? value) => setField<int>('processingId', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}

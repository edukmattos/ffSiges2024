import '../database.dart';

class LogsTable extends SupabaseTable<LogsRow> {
  @override
  String get tableName => 'logs';

  @override
  LogsRow createRow(Map<String, dynamic> data) => LogsRow(data);
}

class LogsRow extends SupabaseDataRow {
  LogsRow(super.data);

  @override
  SupabaseTable get table => LogsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdDate => getField<DateTime>('createdDate')!;
  set createdDate(DateTime value) => setField<DateTime>('createdDate', value);

  String? get uuid => getField<String>('uuid');
  set uuid(String? value) => setField<String>('uuid', value);

  String? get tableNameField => getField<String>('tableName');
  set tableNameField(String? value) => setField<String>('tableName', value);

  String? get operation => getField<String>('operation');
  set operation(String? value) => setField<String>('operation', value);

  dynamic get dataOld => getField<dynamic>('dataOld');
  set dataOld(dynamic value) => setField<dynamic>('dataOld', value);

  dynamic get dataNew => getField<dynamic>('dataNew');
  set dataNew(dynamic value) => setField<dynamic>('dataNew', value);
}

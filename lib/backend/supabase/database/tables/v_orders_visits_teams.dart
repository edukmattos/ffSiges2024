import '../database.dart';

class VOrdersVisitsTeamsTable extends SupabaseTable<VOrdersVisitsTeamsRow> {
  @override
  String get tableName => 'v_orders_visits_teams';

  @override
  VOrdersVisitsTeamsRow createRow(Map<String, dynamic> data) =>
      VOrdersVisitsTeamsRow(data);
}

class VOrdersVisitsTeamsRow extends SupabaseDataRow {
  VOrdersVisitsTeamsRow(super.data);

  @override
  SupabaseTable get table => VOrdersVisitsTeamsTable();

  int? get orderVisitId => getField<int>('orderVisitId');
  set orderVisitId(int? value) => setField<int>('orderVisitId', value);

  bool? get isLeader => getField<bool>('isLeader');
  set isLeader(bool? value) => setField<bool>('isLeader', value);

  int? get userId => getField<int>('userId');
  set userId(int? value) => setField<int>('userId', value);

  String? get nameShort => getField<String>('nameShort');
  set nameShort(String? value) => setField<String>('nameShort', value);

  String? get imgFilePath => getField<String>('imgFilePath');
  set imgFilePath(String? value) => setField<String>('imgFilePath', value);

  String? get imgFileName => getField<String>('imgFileName');
  set imgFileName(String? value) => setField<String>('imgFileName', value);

  DateTime? get dateStart => getField<DateTime>('dateStart');
  set dateStart(DateTime? value) => setField<DateTime>('dateStart', value);

  DateTime? get dateEnd => getField<DateTime>('dateEnd');
  set dateEnd(DateTime? value) => setField<DateTime>('dateEnd', value);

  bool? get isAvailable => getField<bool>('isAvailable');
  set isAvailable(bool? value) => setField<bool>('isAvailable', value);

  bool? get isOrderVisitIdInProgress =>
      getField<bool>('isOrderVisitIdInProgress');
  set isOrderVisitIdInProgress(bool? value) =>
      setField<bool>('isOrderVisitIdInProgress', value);
}

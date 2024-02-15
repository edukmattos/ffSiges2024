import '../database.dart';

class UsersTracksTable extends SupabaseTable<UsersTracksRow> {
  @override
  String get tableName => 'usersTracks';

  @override
  UsersTracksRow createRow(Map<String, dynamic> data) => UsersTracksRow(data);
}

class UsersTracksRow extends SupabaseDataRow {
  UsersTracksRow(super.data);

  @override
  SupabaseTable get table => UsersTracksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('userId');
  set userId(int? value) => setField<int>('userId', value);

  int? get orderVisitId => getField<int>('orderVisitId');
  set orderVisitId(int? value) => setField<int>('orderVisitId', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  DateTime? get createdDate => getField<DateTime>('createdDate');
  set createdDate(DateTime? value) => setField<DateTime>('createdDate', value);
}

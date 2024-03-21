import '../database.dart';

class UsersTrackerTable extends SupabaseTable<UsersTrackerRow> {
  @override
  String get tableName => 'usersTracker';

  @override
  UsersTrackerRow createRow(Map<String, dynamic> data) => UsersTrackerRow(data);
}

class UsersTrackerRow extends SupabaseDataRow {
  UsersTrackerRow(super.data);

  @override
  SupabaseTable get table => UsersTrackerTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get userId => getField<int>('userId')!;
  set userId(int value) => setField<int>('userId', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  DateTime? get createdDate => getField<DateTime>('createdDate');
  set createdDate(DateTime? value) => setField<DateTime>('createdDate', value);

  String? get device => getField<String>('device');
  set device(String? value) => setField<String>('device', value);
}

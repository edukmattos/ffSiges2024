import '../database.dart';

class VUsersTeamsAmountTable extends SupabaseTable<VUsersTeamsAmountRow> {
  @override
  String get tableName => 'v_users_teams_amount';

  @override
  VUsersTeamsAmountRow createRow(Map<String, dynamic> data) =>
      VUsersTeamsAmountRow(data);
}

class VUsersTeamsAmountRow extends SupabaseDataRow {
  VUsersTeamsAmountRow(super.data);

  @override
  SupabaseTable get table => VUsersTeamsAmountTable();

  int? get teamId => getField<int>('teamId');
  set teamId(int? value) => setField<int>('teamId', value);

  int? get teamAmount => getField<int>('teamAmount');
  set teamAmount(int? value) => setField<int>('teamAmount', value);
}

import '../database.dart';

class VUsersNotificationsCountTable
    extends SupabaseTable<VUsersNotificationsCountRow> {
  @override
  String get tableName => 'v_users_notifications_count';

  @override
  VUsersNotificationsCountRow createRow(Map<String, dynamic> data) =>
      VUsersNotificationsCountRow(data);
}

class VUsersNotificationsCountRow extends SupabaseDataRow {
  VUsersNotificationsCountRow(super.data);

  @override
  SupabaseTable get table => VUsersNotificationsCountTable();

  int? get userIdTo => getField<int>('userIdTo');
  set userIdTo(int? value) => setField<int>('userIdTo', value);

  int? get countUserNotifications => getField<int>('countUserNotifications');
  set countUserNotifications(int? value) =>
      setField<int>('countUserNotifications', value);
}

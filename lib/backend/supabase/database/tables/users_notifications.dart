import '../database.dart';

class UsersNotificationsTable extends SupabaseTable<UsersNotificationsRow> {
  @override
  String get tableName => 'usersNotifications';

  @override
  UsersNotificationsRow createRow(Map<String, dynamic> data) =>
      UsersNotificationsRow(data);
}

class UsersNotificationsRow extends SupabaseDataRow {
  UsersNotificationsRow(super.data);

  @override
  SupabaseTable get table => UsersNotificationsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdDate => getField<DateTime>('createdDate')!;
  set createdDate(DateTime value) => setField<DateTime>('createdDate', value);

  int? get userIdTo => getField<int>('userIdTo');
  set userIdTo(int? value) => setField<int>('userIdTo', value);

  int? get userIdFrom => getField<int>('userIdFrom');
  set userIdFrom(int? value) => setField<int>('userIdFrom', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get body => getField<String>('body');
  set body(String? value) => setField<String>('body', value);

  bool? get isRead => getField<bool>('isRead');
  set isRead(bool? value) => setField<bool>('isRead', value);

  DateTime? get readDate => getField<DateTime>('readDate');
  set readDate(DateTime? value) => setField<DateTime>('readDate', value);

  int? get unitId => getField<int>('unitId');
  set unitId(int? value) => setField<int>('unitId', value);

  String? get imgUrl => getField<String>('imgUrl');
  set imgUrl(String? value) => setField<String>('imgUrl', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  int? get orderId => getField<int>('orderId');
  set orderId(int? value) => setField<int>('orderId', value);

  int? get visitId => getField<int>('visitId');
  set visitId(int? value) => setField<int>('visitId', value);

  int? get activityId => getField<int>('activityId');
  set activityId(int? value) => setField<int>('activityId', value);

  int? get companyId => getField<int>('companyId');
  set companyId(int? value) => setField<int>('companyId', value);
}

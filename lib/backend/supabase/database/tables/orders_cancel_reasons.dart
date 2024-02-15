import '../database.dart';

class OrdersCancelReasonsTable extends SupabaseTable<OrdersCancelReasonsRow> {
  @override
  String get tableName => 'ordersCancelReasons';

  @override
  OrdersCancelReasonsRow createRow(Map<String, dynamic> data) =>
      OrdersCancelReasonsRow(data);
}

class OrdersCancelReasonsRow extends SupabaseDataRow {
  OrdersCancelReasonsRow(super.data);

  @override
  SupabaseTable get table => OrdersCancelReasonsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get departmentId => getField<int>('departmentId');
  set departmentId(int? value) => setField<int>('departmentId', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailable => getField<bool>('isAvailable');
  set isAvailable(bool? value) => setField<bool>('isAvailable', value);

  bool? get isDeleted => getField<bool>('isDeleted');
  set isDeleted(bool? value) => setField<bool>('isDeleted', value);
}

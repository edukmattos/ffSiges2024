import '../database.dart';

class OrdersCausesTable extends SupabaseTable<OrdersCausesRow> {
  @override
  String get tableName => 'ordersCauses';

  @override
  OrdersCausesRow createRow(Map<String, dynamic> data) => OrdersCausesRow(data);
}

class OrdersCausesRow extends SupabaseDataRow {
  OrdersCausesRow(super.data);

  @override
  SupabaseTable get table => OrdersCausesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isAvailabe => getField<bool>('isAvailabe');
  set isAvailabe(bool? value) => setField<bool>('isAvailabe', value);

  bool? get isDeleted => getField<bool>('isDeleted');
  set isDeleted(bool? value) => setField<bool>('isDeleted', value);
}

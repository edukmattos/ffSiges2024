import '../database.dart';

class OrdersPrioritiesTable extends SupabaseTable<OrdersPrioritiesRow> {
  @override
  String get tableName => 'ordersPriorities';

  @override
  OrdersPrioritiesRow createRow(Map<String, dynamic> data) =>
      OrdersPrioritiesRow(data);
}

class OrdersPrioritiesRow extends SupabaseDataRow {
  OrdersPrioritiesRow(super.data);

  @override
  SupabaseTable get table => OrdersPrioritiesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}

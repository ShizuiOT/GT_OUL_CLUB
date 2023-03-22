import '../database.dart';

class ClientsTable extends SupabaseTable<ClientsRow> {
  @override
  String get tableName => 'Clients';

  @override
  ClientsRow createRow(Map<String, dynamic> data) => ClientsRow(data);
}

class ClientsRow extends SupabaseDataRow {
  ClientsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ClientsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('Name')!;
  set name(String value) => setField<String>('Name', value);

  String get surname => getField<String>('Surname')!;
  set surname(String value) => setField<String>('Surname', value);

  String get address => getField<String>('Address')!;
  set address(String value) => setField<String>('Address', value);

  String get phoneNum => getField<String>('Phone_Num')!;
  set phoneNum(String value) => setField<String>('Phone_Num', value);
}

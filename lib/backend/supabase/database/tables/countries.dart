import '../database.dart';

class CountriesTable extends SupabaseTable<CountriesRow> {
  @override
  String get tableName => 'countries';

  @override
  CountriesRow createRow(Map<String, dynamic> data) => CountriesRow(data);
}

class CountriesRow extends SupabaseDataRow {
  CountriesRow(super.data);

  @override
  SupabaseTable get table => CountriesTable();

  String? get iso2 => getField<String>('iso2');
  set iso2(String? value) => setField<String>('iso2', value);

  String? get enName => getField<String>('enName');
  set enName(String? value) => setField<String>('enName', value);

  String get ruName => getField<String>('ruName')!;
  set ruName(String value) => setField<String>('ruName', value);

  String? get flagLink16x12 => getField<String>('flagLink16x12');
  set flagLink16x12(String? value) => setField<String>('flagLink16x12', value);

  String? get flagLink32x24 => getField<String>('flagLink32x24');
  set flagLink32x24(String? value) => setField<String>('flagLink32x24', value);

  String? get flagLink48x36 => getField<String>('flagLink48x36');
  set flagLink48x36(String? value) => setField<String>('flagLink48x36', value);

  String? get flagLinkH24 => getField<String>('flagLinkH24');
  set flagLinkH24(String? value) => setField<String>('flagLinkH24', value);
}

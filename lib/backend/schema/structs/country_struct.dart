// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountryStruct extends BaseStruct {
  CountryStruct({
    int? id,
    String? iso2,
    String? enName,
    String? ruName,
    String? flagLink16x12,
    String? flagLink32x24,
    String? flagLink48x36,
    String? flagLinkH24,
  })  : _id = id,
        _iso2 = iso2,
        _enName = enName,
        _ruName = ruName,
        _flagLink16x12 = flagLink16x12,
        _flagLink32x24 = flagLink32x24,
        _flagLink48x36 = flagLink48x36,
        _flagLinkH24 = flagLinkH24;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "iso2" field.
  String? _iso2;
  String get iso2 => _iso2 ?? '';
  set iso2(String? val) => _iso2 = val;
  bool hasIso2() => _iso2 != null;

  // "enName" field.
  String? _enName;
  String get enName => _enName ?? '';
  set enName(String? val) => _enName = val;
  bool hasEnName() => _enName != null;

  // "ruName" field.
  String? _ruName;
  String get ruName => _ruName ?? '';
  set ruName(String? val) => _ruName = val;
  bool hasRuName() => _ruName != null;

  // "flagLink16x12" field.
  String? _flagLink16x12;
  String get flagLink16x12 => _flagLink16x12 ?? '';
  set flagLink16x12(String? val) => _flagLink16x12 = val;
  bool hasFlagLink16x12() => _flagLink16x12 != null;

  // "flagLink32x24" field.
  String? _flagLink32x24;
  String get flagLink32x24 => _flagLink32x24 ?? '';
  set flagLink32x24(String? val) => _flagLink32x24 = val;
  bool hasFlagLink32x24() => _flagLink32x24 != null;

  // "flagLink48x36" field.
  String? _flagLink48x36;
  String get flagLink48x36 => _flagLink48x36 ?? '';
  set flagLink48x36(String? val) => _flagLink48x36 = val;
  bool hasFlagLink48x36() => _flagLink48x36 != null;

  // "flagLinkH24" field.
  String? _flagLinkH24;
  String get flagLinkH24 => _flagLinkH24 ?? '';
  set flagLinkH24(String? val) => _flagLinkH24 = val;
  bool hasFlagLinkH24() => _flagLinkH24 != null;

  static CountryStruct fromMap(Map<String, dynamic> data) => CountryStruct(
        id: castToType<int>(data['id']),
        iso2: data['iso2'] as String?,
        enName: data['enName'] as String?,
        ruName: data['ruName'] as String?,
        flagLink16x12: data['flagLink16x12'] as String?,
        flagLink32x24: data['flagLink32x24'] as String?,
        flagLink48x36: data['flagLink48x36'] as String?,
        flagLinkH24: data['flagLinkH24'] as String?,
      );

  static CountryStruct? maybeFromMap(dynamic data) =>
      data is Map ? CountryStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'iso2': _iso2,
        'enName': _enName,
        'ruName': _ruName,
        'flagLink16x12': _flagLink16x12,
        'flagLink32x24': _flagLink32x24,
        'flagLink48x36': _flagLink48x36,
        'flagLinkH24': _flagLinkH24,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'iso2': serializeParam(
          _iso2,
          ParamType.String,
        ),
        'enName': serializeParam(
          _enName,
          ParamType.String,
        ),
        'ruName': serializeParam(
          _ruName,
          ParamType.String,
        ),
        'flagLink16x12': serializeParam(
          _flagLink16x12,
          ParamType.String,
        ),
        'flagLink32x24': serializeParam(
          _flagLink32x24,
          ParamType.String,
        ),
        'flagLink48x36': serializeParam(
          _flagLink48x36,
          ParamType.String,
        ),
        'flagLinkH24': serializeParam(
          _flagLinkH24,
          ParamType.String,
        ),
      }.withoutNulls;

  static CountryStruct fromSerializableMap(Map<String, dynamic> data) =>
      CountryStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        iso2: deserializeParam(
          data['iso2'],
          ParamType.String,
          false,
        ),
        enName: deserializeParam(
          data['enName'],
          ParamType.String,
          false,
        ),
        ruName: deserializeParam(
          data['ruName'],
          ParamType.String,
          false,
        ),
        flagLink16x12: deserializeParam(
          data['flagLink16x12'],
          ParamType.String,
          false,
        ),
        flagLink32x24: deserializeParam(
          data['flagLink32x24'],
          ParamType.String,
          false,
        ),
        flagLink48x36: deserializeParam(
          data['flagLink48x36'],
          ParamType.String,
          false,
        ),
        flagLinkH24: deserializeParam(
          data['flagLinkH24'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CountryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CountryStruct &&
        id == other.id &&
        iso2 == other.iso2 &&
        enName == other.enName &&
        ruName == other.ruName &&
        flagLink16x12 == other.flagLink16x12 &&
        flagLink32x24 == other.flagLink32x24 &&
        flagLink48x36 == other.flagLink48x36 &&
        flagLinkH24 == other.flagLinkH24;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        iso2,
        enName,
        ruName,
        flagLink16x12,
        flagLink32x24,
        flagLink48x36,
        flagLinkH24
      ]);
}

CountryStruct createCountryStruct({
  int? id,
  String? iso2,
  String? enName,
  String? ruName,
  String? flagLink16x12,
  String? flagLink32x24,
  String? flagLink48x36,
  String? flagLinkH24,
}) =>
    CountryStruct(
      id: id,
      iso2: iso2,
      enName: enName,
      ruName: ruName,
      flagLink16x12: flagLink16x12,
      flagLink32x24: flagLink32x24,
      flagLink48x36: flagLink48x36,
      flagLinkH24: flagLinkH24,
    );

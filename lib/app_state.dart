import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _LASTUPDATEDPLAYERTIME = '';
  String get LASTUPDATEDPLAYERTIME => _LASTUPDATEDPLAYERTIME;
  set LASTUPDATEDPLAYERTIME(String value) {
    _LASTUPDATEDPLAYERTIME = value;
  }

  MaindataStruct _MAINDATA = MaindataStruct();
  MaindataStruct get MAINDATA => _MAINDATA;
  set MAINDATA(MaindataStruct value) {
    _MAINDATA = value;
  }

  void updateMAINDATAStruct(Function(MaindataStruct) updateFn) {
    updateFn(_MAINDATA);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

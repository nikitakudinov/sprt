import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

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

  UpdatesStruct _UPDATES = UpdatesStruct();
  UpdatesStruct get UPDATES => _UPDATES;
  set UPDATES(UpdatesStruct value) {
    _UPDATES = value;
  }

  void updateUPDATESStruct(Function(UpdatesStruct) updateFn) {
    updateFn(_UPDATES);
  }
}

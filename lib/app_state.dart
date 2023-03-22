import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('ff_UserData')) {
      try {
        _UserData = jsonDecode(prefs.getString('ff_UserData') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    _AccessToken = prefs.getString('ff_AccessToken') ?? _AccessToken;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _booleann = false;
  bool get booleann => _booleann;
  set booleann(bool _value) {
    _booleann = _value;
  }

  int _lengthcounter = 0;
  int get lengthcounter => _lengthcounter;
  set lengthcounter(int _value) {
    _lengthcounter = _value;
  }

  List<bool> _ListOfChecks = [false, false, false, false];
  List<bool> get ListOfChecks => _ListOfChecks;
  set ListOfChecks(List<bool> _value) {
    _ListOfChecks = _value;
  }

  void addToListOfChecks(bool _value) {
    _ListOfChecks.add(_value);
  }

  void removeFromListOfChecks(bool _value) {
    _ListOfChecks.remove(_value);
  }

  void removeAtIndexFromListOfChecks(int _index) {
    _ListOfChecks.removeAt(_index);
  }

  bool _boolPIN = false;
  bool get boolPIN => _boolPIN;
  set boolPIN(bool _value) {
    _boolPIN = _value;
  }

  dynamic _UserData;
  dynamic get UserData => _UserData;
  set UserData(dynamic _value) {
    _UserData = _value;
    prefs.setString('ff_UserData', jsonEncode(_value));
  }

  String _AccessToken = '';
  String get AccessToken => _AccessToken;
  set AccessToken(String _value) {
    _AccessToken = _value;
    prefs.setString('ff_AccessToken', _value);
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

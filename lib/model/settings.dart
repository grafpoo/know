import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';

class Settings {
  final String _showArmyKey = "showArmy";
  final String _showNavyKey = "showNavy";
  final String _showAirForceKey = "showAirForce";
  final String _showMarinesKey = "showMarines";
  final String _showCoastGuardKey = "showCoastGuard";

  static SharedPreferences? _sp;
  static Settings _instance = Settings._internal();

  Settings._internal();

  static Settings getInstance() {
    return _instance;
  }

  Future init() async {
    _sp = await SharedPreferences.getInstance();
  }

  bool getShowArmy() {
    if (_sp == null) { init(); }
    bool? show = _sp!.getBool(_showArmyKey);
    if (show == null) { return true; }
    return show;
  }

  Future setShowArmy(bool show) {
    if (_sp == null) { init(); }
    return _sp!.setBool(_showArmyKey, show);
  }

  bool getShowNavy() {
    if (_sp == null) { init(); }
    bool? show = _sp!.getBool(_showNavyKey);
    if (show == null) { return true; }
    return show;
  }

  Future setShowNavy(bool show) {
    if (_sp == null) { init(); }
    return _sp!.setBool(_showNavyKey, show);
  }

  bool getShowAirForce() {
    if (_sp == null) { init(); }
    bool? show = _sp!.getBool(_showAirForceKey);
    if (show == null) { return true; }
    return show;
  }

  Future setShowAirForce(bool show) {
    if (_sp == null) { init(); }
    return _sp!.setBool(_showAirForceKey, show);
  }

  bool getShowMarines() {
    if (_sp == null) { init(); }
    bool? show = _sp!.getBool(_showMarinesKey);
    if (show == null) { return true; }
    return show;
  }

  Future setShowMarines(bool show) {
    if (_sp == null) { init(); }
    return _sp!.setBool(_showMarinesKey, show);
  }

  bool getShowCoastGuard() {
    if (_sp == null) { init(); }
    bool? show = _sp!.getBool(_showCoastGuardKey);
    if (show == null) { return true; }
    return show;
  }

  Future setShowCoastGuard(bool show) {
    if (_sp == null) { init(); }
    return _sp!.setBool(_showCoastGuardKey, show);
  }

}
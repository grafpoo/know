import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';

class MyPreferences with ChangeNotifier {

  static final MyPreferences _instance = MyPreferences._();

  MyPreferences._() {
    _load();
  }

  factory MyPreferences() {
    return _instance;
  }

  bool showArmy = true;
  bool showNavy = true;
  bool showAirForce = true;
  bool showMarines = true;
  bool showCoastGuard = true;

  String _showArmyKey = "showArmy";
  String _showNavyKey = "showNavy";
  String _showAirForceKey = "showAirForce";
  String _showMarinesKey = "showMarines";
  String _showCoastGuardKey = "showCoastGuard";

  bool _isWaiting = true;
  bool _hasError = false;
  //
  // read-only status indicators
  bool get isWaiting => _isWaiting;
  bool get hasError => _hasError;

  void _load() => _store(load: true);
  void save() => _store();

  //
  // helper to do the actual storage-related tasks
  //  handles both initial-load & save since they only differ by essentially 1 line
  //  - getInt vs setInt
  void _store({bool load = false}) async {
    _hasError = false;
    _isWaiting = true;
    notifyListeners();
    //
    // artificial delay so we can see the UI changes
    // await Future.delayed(Duration(milliseconds: 500));
    //
    try {
      final prefs = await SharedPreferences.getInstance();
      if (load) {
        showArmy = prefs.getBool(_showArmyKey) ?? true;
        showNavy = prefs.getBool(_showNavyKey) ?? true;
        showAirForce = prefs.getBool(_showAirForceKey) ?? true;
        showMarines = prefs.getBool(_showMarinesKey) ?? true;
        showCoastGuard = prefs.getBool(_showCoastGuardKey) ?? true;
      } else {
        // save
        // uncomment this to simulate an error during save
        // if (_value > 3) throw Exception("Artificial Error");
        await prefs.setBool(_showArmyKey, showArmy);
        await prefs.setBool(_showNavyKey, showNavy);
        await prefs.setBool(_showAirForceKey, showAirForce);
        await prefs.setBool(_showMarinesKey, showMarines);
        await prefs.setBool(_showCoastGuardKey, showCoastGuard);
      }
      _hasError = false;
    } catch (error) {
      _hasError = true;
    }
    _isWaiting = false;
    notifyListeners();
  }
}
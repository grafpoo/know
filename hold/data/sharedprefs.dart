import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class SPSettings {
  static SPSettings _instance = SPSettings._internal();
  final String fontSizeKey = 'font_size';
  final String colorKey = 'color';
  static SharedPreferences? _sp;

  factory SPSettings() {
    if (_instance == null) {
      _instance = SPSettings._internal();
    }
    return _instance;
  }

  SPSettings._internal();

  Future init() async {
    _sp = await SharedPreferences.getInstance();
  }

  double getFontSize() {
    if (_sp == null) {
      init();
    }
    double? r = _sp!.getDouble(fontSizeKey);
    if (r == null) {
      return 0.0;
    }
    return r;
  }

  Future setFontSize(double size) {
    if (_sp == null) {
      init();
    }
    return _sp!.setDouble(fontSizeKey, size);
  }

  int getColor() {
    if (_sp == null) {
      init();
    }
    int? color = _sp!.getInt(colorKey);
    if (color == null) {
      return 0xff1976D2; //blue
    } else {
      return color;
    }
  }

  Future setColor(int color) {
    if (_sp == null) {
      init();
    }
    return _sp!.setInt(colorKey, color);
  }
}

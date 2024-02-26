import 'package:flutter/material.dart';

class ThemeLoader with ChangeNotifier {
  late ThemeData _theme;

  bool _darkTheme = false;
  bool _lightTheme = false;

  bool get darkTheme => _darkTheme;
  ThemeData get actualTheme => _theme;

  ThemeLoader(int theme) {
    switch (theme) {
      case 0:
        _theme = _myDarkTheme();
        _lightTheme = true;
        _darkTheme = false;
        break;
      case 1:
        _theme = _myLightTheme();
        _lightTheme = false;
        _darkTheme = true;
        break;
      default:
        _theme = _myDarkTheme();
        _darkTheme = true;
        break;
    }
  }

  set darkTheme(bool value) {
    _darkTheme = value;
    _lightTheme = !value;
    if (value) {
      _theme = _myDarkTheme();
    } else {
      _theme = _myLightTheme();
    }
    notifyListeners();
  }

  set lightTheme(bool value) {
    _lightTheme = value;
    _darkTheme = !value;
    if (value) {
      _theme = _myLightTheme();
    } else {
      _theme = _myDarkTheme();
    }
    notifyListeners();
  }

  ThemeData _myLightTheme() {
    return (ThemeData.light().copyWith(
        colorScheme: const ColorScheme(
          primary: Color.fromARGB(255, 84, 124, 226),
          secondary: Color.fromARGB(255, 44, 108, 220),
          background: Color.fromARGB(255, 196, 209, 223),
          surface: Color.fromARGB(255, 232, 231, 242),
          onBackground: Color.fromARGB(255, 204, 210, 232),
          onSurface: Color(0xFF0D0D0D),
          brightness: Brightness.light,
          error: Color.fromARGB(255, 255, 0, 0),
          onError: Colors.black,
          onPrimary: Colors.black,
          onSecondary: Colors.black,
        ),
        textTheme: const TextTheme(
            bodyMedium: TextStyle(
                fontSize: 16.0,
                color: Color(0xFF0D0D0D)))));
  }

  ThemeData _myDarkTheme() {
    return (ThemeData.dark().copyWith(
        colorScheme: const ColorScheme(
          primary: Color(0xFF1f3236),
          secondary: Color.fromARGB(255, 52, 75, 82),
          background: Color.fromARGB(255, 98, 107, 132),
          surface: Color(0xFF030e14),
          onBackground: Color.fromARGB(255, 156, 160, 187),
          onSurface: Color.fromARGB(255, 76, 77, 115),
          brightness: Brightness.dark,
          error: Color.fromARGB(255, 255, 0, 0),
          onError: Color(0xFFECEFF1),
          onPrimary: Color(0xFF7a8a8c),
          onSecondary: Color(0xFF3f5354),
        ),
        textTheme: const TextTheme(
            bodyMedium: TextStyle(
                fontSize: 16.0,
                color: Color(0xFFECEFF1)))));
  }
}
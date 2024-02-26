import 'package:flutter/material.dart';

class Detector extends ChangeNotifier {
  bool _detectorEnabled = false;

  bool get detectorEnabled => _detectorEnabled;

  set detectorEnabled(bool value) {
    _detectorEnabled = value;
    notifyListeners();
  }

  void cambiarModoDetector() {
    _detectorEnabled = !_detectorEnabled;
    notifyListeners();
  }
}
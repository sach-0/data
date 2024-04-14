// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
bool isDarkBackground(String hexColor) {
  hexColor = hexColor.replaceAll('#', '');

  int r = int.parse(hexColor.substring(0, 2), radix: 16);
  int g = int.parse(hexColor.substring(2, 4), radix: 16);
  int b = int.parse(hexColor.substring(4, 6), radix: 16);

  double luminancia = (0.2126 * r + 0.7152 * g + 0.0722 * b) / 255;

  if (luminancia < 0.5) {
    return true;
  } else {
    return false;
  }
}

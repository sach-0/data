// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:fyp24/app_state.dart';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
import 'package:flutter_tts/flutter_tts.dart';
import 'package:json_path/json_path.dart';

Future tts3() async {
  FlutterTts flutterTts = FlutterTts();
  flutterTts.setLanguage("en-US");
  String text = FFAppState().tts3;
  flutterTts.speak(text);
}

//FFAppState().tts

// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

void forStickers(List<bool> checkboxValues, int index) {
  if (checkboxValues.contains(true)) {
    for (int i = 0; i < checkboxValues.length; i++) {
      if (i == index) {
        checkboxValues[i] = true;
      } else {
        checkboxValues[i] = false;
      }
    }
  } else {
    checkboxValues[index] = true;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!

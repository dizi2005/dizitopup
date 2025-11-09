// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Imports other custom actions
// Imports custom functions

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'package:firebase_auth/firebase_auth.dart';

Future<String> getAuthProvider() async {
  final user = FirebaseAuth.instance.currentUser;

  if (user == null) return "none";

  // Firebase peut avoir plusieurs providers (liste)
  final providers = user.providerData.map((p) => p.providerId).toList();

  // Exemples possibles :
  // "password" → email/mot de passe
  // "google.com" → Google
  // "apple.com" → Apple
  // "facebook.com" → Facebook
  // "phone" → Auth par téléphone

  return providers.isNotEmpty ? providers.first : "unknown";
}

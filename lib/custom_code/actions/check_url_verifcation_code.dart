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

Future<bool> checkUrlVerifcationCode(String code) async {
  try {
    final auth = FirebaseAuth.instance;

    // Vérifie si le code est valide (mais n'applique rien)
    await auth.checkActionCode(code);

    // Si aucun message d'erreur → le code est valide
    print('✅ Code de vérification valide');
    return true;
  } catch (e) {
    // Si Firebase renvoie une erreur → code invalide ou expiré
    print('❌ Code invalide ou expiré : $e');
    return false;
  }
}

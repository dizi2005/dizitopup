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

Future<bool> verifyEmailCodeAction(String code, String mode) async {
  try {
    final auth = FirebaseAuth.instance;

    if (mode == 'verifyEmail') {
      // Vérifie si le code est valide
      await auth.checkActionCode(code);
      // Applique la vérification
      await auth.applyActionCode(code);
      // Recharge l'utilisateur pour actualiser son statut
      await auth.currentUser?.reload();
      return true;
    } else {
      print('Mode non pris en charge : $mode');
      return false;
    }
  } catch (e) {
    print('Erreur lors de la vérification : $e');
    return false;
  }
}

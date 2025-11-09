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

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'package:firebase_auth/firebase_auth.dart';

Future<bool> resetPasswordFromLink(String oobCode, String newPassword) async {
  try {
    // Vérifie que le code est valide et récupère l'email lié
    final email = await FirebaseAuth.instance.verifyPasswordResetCode(oobCode);

    // Applique le nouveau mot de passe
    await FirebaseAuth.instance.confirmPasswordReset(
      code: oobCode,
      newPassword: newPassword,
    );

    print('Mot de passe réinitialisé pour $email');
    return true;
  } catch (e) {
    print('Erreur lors de la réinitialisation : $e');
    return false;
  }
}

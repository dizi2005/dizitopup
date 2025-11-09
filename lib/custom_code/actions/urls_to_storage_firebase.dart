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

import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:firebase_storage/firebase_storage.dart';

Future<String> urlsToStorageFirebase(
  String userEmail,
  String urlsExterne,
) async {
  String logMessages = '';

  try {
    logMessages += '🚀 Début de la fonction urlsToStorageFirebase\n';
    logMessages += '📧 Email reçu : $userEmail\n';
    logMessages += '🌍 URL externe : $urlsExterne\n';

    // Étape 1 : Télécharger depuis l’URL avec un User-Agent
    logMessages += '⬇️ Téléchargement avec header User-Agent...\n';
    final response = await http.get(
      Uri.parse(urlsExterne),
      headers: {
        'User-Agent':
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 '
                '(KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36',
      },
    );
    logMessages += '📡 Code HTTP reçu : ${response.statusCode}\n';

    if (response.statusCode != 200) {
      logMessages += '❌ Échec du téléchargement depuis l’URL (status != 200)\n';
      return logMessages;
    }

    Uint8List fileData = response.bodyBytes;
    logMessages += '✅ Fichier téléchargé : ${fileData.lengthInBytes} octets\n';

    // Étape 2 : Nom unique
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final fileName = 'avatar_$timestamp.jpg';
    logMessages += '📁 Nom de fichier : $fileName\n';

    // Étape 3 : Référence Firebase Storage
    final storageRef = FirebaseStorage.instance
        .ref()
        .child('users')
        .child(userEmail)
        .child('avatarGame')
        .child(fileName);
    logMessages += '📂 Chemin Firebase prêt\n';

    // Étape 4 : Upload
    logMessages += '🚚 Téléversement en cours...\n';
    final uploadTask = await storageRef.putData(fileData);
    logMessages += '✅ Upload réussi\n';

    // Étape 5 : Récupération du lien de téléchargement
    final downloadUrl = await uploadTask.ref.getDownloadURL();
    logMessages += '🔗 URL Firebase : $downloadUrl\n';

    return downloadUrl;
  } catch (e) {
    logMessages += '❌ Erreur capturée : $e\n';
    return logMessages;
  }
}

import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic formatJsonString(String rawJson) {
  try {
    // Parse le JSON brut en Map
    final decoded = jsonDecode(rawJson);

    // Re-convertit avec indentation
    final formatted = const JsonEncoder.withIndent('  ').convert(decoded);

    return formatted;
  } catch (e) {
    return 'Erreur de parsing : $e';
  }
}

List<String> stringToImagePath(List<String> listString) {
  return listString ?? [];
}

String stringToImagePathSingle(String imageUrl) {
  return imageUrl ?? '';
}

String generateWhatsAppLink(
  String transactionType,
  double amount,
  String paymentMethod,
  DocumentReference userReference,
  String businessWaNumber,
) {
  final message =
      'Bonjour, je veux faire un $transactionType de $amount GDES via $paymentMethod.\n'
      'Voici ma référence : ${userReference.path}';

  final encodedMessage = Uri.encodeComponent(message);
  return 'https://api.whatsapp.com/send?phone=$businessWaNumber&text=$encodedMessage';
}

double stringToDouble(String stringText) {
  return double.parse(stringText);
}

int compareDouble(
  double a,
  double b,
  double delta,
) {
  if ((a - b).abs() < delta) {
    return 0; // égaux
  } else if (a > b) {
    return 1; // a est plus grand
  } else {
    return -1; // b est plus grand
  }
}

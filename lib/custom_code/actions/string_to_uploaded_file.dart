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

import 'dart:convert';

Future<FFUploadedFile> stringToUploadedFile(String jsonString) async {
  final Map<String, dynamic> data = json.decode(jsonString);

  // Convertit bytes si présent
  final List<dynamic>? bytesList = data['bytes'];
  final Uint8List? bytes =
      bytesList != null ? Uint8List.fromList(List<int>.from(bytesList)) : null;

  return FFUploadedFile(
    name: data['name'],
    bytes: bytes,
    height: data['height'],
    width: data['width'],
    blurHash: data['blurHash'],
  );
}

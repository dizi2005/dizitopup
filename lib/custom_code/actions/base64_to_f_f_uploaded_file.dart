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

import 'dart:typed_data';
import 'dart:convert';

Future<List<FFUploadedFile>> base64ToFFUploadedFile(
    List<String> base64List) async {
  List<FFUploadedFile> files = [];

  for (String base64Str in base64List) {
    try {
      final bytes = base64Decode(base64Str);
      files.add(FFUploadedFile(
        name: 'img_${DateTime.now().millisecondsSinceEpoch}.jpg',
        bytes: bytes,
      ));
    } catch (_) {
      files.add(const FFUploadedFile(name: 'error: invalid base64'));
    }
  }

  return files;
}

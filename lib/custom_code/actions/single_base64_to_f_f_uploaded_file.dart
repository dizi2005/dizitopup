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

Future<FFUploadedFile> singleBase64ToFFUploadedFile(String base64Str) async {
  try {
    final bytes = base64Decode(base64Str);
    return FFUploadedFile(
      name: 'img_${DateTime.now().millisecondsSinceEpoch}.jpg',
      bytes: bytes,
    );
  } catch (_) {
    return const FFUploadedFile(name: 'error: invalid base64');
  }
}

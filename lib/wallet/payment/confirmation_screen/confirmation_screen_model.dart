import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/wallet/payment_methode/payment_methode_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'confirmation_screen_widget.dart' show ConfirmationScreenWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ConfirmationScreenModel
    extends FlutterFlowModel<ConfirmationScreenWidget> {
  ///  Local state fields for this component.

  String? codeSend;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter your player ID here is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Services)] action in Button widget.
  ApiCallResponse? checkProductValideApi;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TransactionRecord? creatTransaction;
  // Stores action output result for [Backend Call - API (New Order)] action in Button widget.
  ApiCallResponse? creatOderApi;
  // Stores action output result for [Backend Call - API (Send Email)] action in Button widget.
  ApiCallResponse? sendReportEmailApi;

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

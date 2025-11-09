import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'depot_field_widget.dart' show DepotFieldWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class DepotFieldModel extends FlutterFlowModel<DepotFieldWidget> {
  ///  Local state fields for this component.

  bool optionManual = true;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Montant is required';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Button widget.
  bool? validateFr2;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? validateFr;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TransactionRecord? creatTransaction;
  // Stores action output result for [Backend Call - API (Moncash Auth)] action in Button widget.
  ApiCallResponse? authMonCash;
  // Stores action output result for [Backend Call - API (CreatePayment)] action in Button widget.
  ApiCallResponse? creatPayment;

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

import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'confirm_payment_widget.dart' show ConfirmPaymentWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ConfirmPaymentModel extends FlutterFlowModel<ConfirmPaymentWidget> {
  ///  Local state fields for this page.

  bool isConfirmed = false;

  bool isManual = true;

  bool isDelivery = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in confirmPayment widget.
  TransactionRecord? seeSpecificTransaction;
  // Stores action output result for [Backend Call - API (Moncash Auth)] action in confirmPayment widget.
  ApiCallResponse? authMoncash;
  // Stores action output result for [Backend Call - API (PaymentDetails orderID)] action in confirmPayment widget.
  ApiCallResponse? checkIsSuccess;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

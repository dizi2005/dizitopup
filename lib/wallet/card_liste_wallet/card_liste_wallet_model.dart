import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/loading/loading_card/loading_card_widget.dart';
import '/wallet/transaction_details/transaction_details_widget.dart';
import 'dart:ui';
import 'card_liste_wallet_widget.dart' show CardListeWalletWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CardListeWalletModel extends FlutterFlowModel<CardListeWalletWidget> {
  ///  Local state fields for this component.

  bool isValide = true;

  int? count = 0;

  String messageLog = 'Loop pas fini';

  int delay = 5000;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Read Document] action in cardListeWallet widget.
  TransactionRecord? readTransac;
  // Stores action output result for [Backend Call - API (TopupEpin Status)] action in cardListeWallet widget.
  ApiCallResponse? checkOrder;
  // Stores action output result for [Backend Call - API (TopupEpin Status)] action in cardListeWallet widget.
  ApiCallResponse? checkOrderLoopApi;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

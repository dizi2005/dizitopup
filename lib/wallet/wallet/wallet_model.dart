import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/wallet/card_liste_wallet/card_liste_wallet_widget.dart';
import '/wallet/load_transaction_view/load_transaction_view_widget.dart';
import '/wallet/payment_methode/payment_methode_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'wallet_widget.dart' show WalletWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class WalletModel extends FlutterFlowModel<WalletWidget> {
  ///  Local state fields for this page.

  bool visibilyAmout = true;

  bool? transacViewFac;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Wallet widget.
  int? seeAllTransactions;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // Models for cardListeWallet dynamic component.
  late FlutterFlowDynamicModels<CardListeWalletModel> cardListeWalletModels;

  @override
  void initState(BuildContext context) {
    cardListeWalletModels =
        FlutterFlowDynamicModels(() => CardListeWalletModel());
  }

  @override
  void dispose() {
    cardListeWalletModels.dispose();
  }
}

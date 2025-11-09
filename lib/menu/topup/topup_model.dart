import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/loading/loadingdeno1/loadingdeno1_widget.dart';
import '/loading/loadingdeno2/loadingdeno2_widget.dart';
import '/wallet/depot_field/depot_field_widget.dart';
import '/wallet/payment/confirmation_screen/confirmation_screen_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'topup_widget.dart' show TopupWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class TopupModel extends FlutterFlowModel<TopupWidget> {
  ///  Local state fields for this page.

  List<bool> chooseType1 = [];
  void addToChooseType1(bool item) => chooseType1.add(item);
  void removeFromChooseType1(bool item) => chooseType1.remove(item);
  void removeAtIndexFromChooseType1(int index) => chooseType1.removeAt(index);
  void insertAtIndexInChooseType1(int index, bool item) =>
      chooseType1.insert(index, item);
  void updateChooseType1AtIndex(int index, Function(bool) updateFn) =>
      chooseType1[index] = updateFn(chooseType1[index]);

  List<bool> chooseType2 = [];
  void addToChooseType2(bool item) => chooseType2.add(item);
  void removeFromChooseType2(bool item) => chooseType2.remove(item);
  void removeAtIndexFromChooseType2(int index) => chooseType2.removeAt(index);
  void insertAtIndexInChooseType2(int index, bool item) =>
      chooseType2.insert(index, item);
  void updateChooseType2AtIndex(int index, Function(bool) updateFn) =>
      chooseType2[index] = updateFn(chooseType2[index]);

  String choosePayment = 'Solde';

  List<ProductsRecord> listeDenomNsp = [];
  void addToListeDenomNsp(ProductsRecord item) => listeDenomNsp.add(item);
  void removeFromListeDenomNsp(ProductsRecord item) =>
      listeDenomNsp.remove(item);
  void removeAtIndexFromListeDenomNsp(int index) =>
      listeDenomNsp.removeAt(index);
  void insertAtIndexInListeDenomNsp(int index, ProductsRecord item) =>
      listeDenomNsp.insert(index, item);
  void updateListeDenomNspAtIndex(
          int index, Function(ProductsRecord) updateFn) =>
      listeDenomNsp[index] = updateFn(listeDenomNsp[index]);

  List<ProductsRecord> listeDenomSP = [];
  void addToListeDenomSP(ProductsRecord item) => listeDenomSP.add(item);
  void removeFromListeDenomSP(ProductsRecord item) => listeDenomSP.remove(item);
  void removeAtIndexFromListeDenomSP(int index) => listeDenomSP.removeAt(index);
  void insertAtIndexInListeDenomSP(int index, ProductsRecord item) =>
      listeDenomSP.insert(index, item);
  void updateListeDenomSPAtIndex(
          int index, Function(ProductsRecord) updateFn) =>
      listeDenomSP[index] = updateFn(listeDenomSP[index]);

  String? productIDSeleted;

  String? productNameSelected;

  List<FFUploadedFile> listImageTpye1 = [];
  void addToListImageTpye1(FFUploadedFile item) => listImageTpye1.add(item);
  void removeFromListImageTpye1(FFUploadedFile item) =>
      listImageTpye1.remove(item);
  void removeAtIndexFromListImageTpye1(int index) =>
      listImageTpye1.removeAt(index);
  void insertAtIndexInListImageTpye1(int index, FFUploadedFile item) =>
      listImageTpye1.insert(index, item);
  void updateListImageTpye1AtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      listImageTpye1[index] = updateFn(listImageTpye1[index]);

  List<FFUploadedFile> listImageTpye2 = [];
  void addToListImageTpye2(FFUploadedFile item) => listImageTpye2.add(item);
  void removeFromListImageTpye2(FFUploadedFile item) =>
      listImageTpye2.remove(item);
  void removeAtIndexFromListImageTpye2(int index) =>
      listImageTpye2.removeAt(index);
  void insertAtIndexInListImageTpye2(int index, FFUploadedFile item) =>
      listImageTpye2.insert(index, item);
  void updateListImageTpye2AtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      listImageTpye2[index] = updateFn(listImageTpye2[index]);

  String? playerID;

  String? userName;

  String? bannerUrl;

  double? priceSelected;

  List<String> bannerUrls = [];
  void addToBannerUrls(String item) => bannerUrls.add(item);
  void removeFromBannerUrls(String item) => bannerUrls.remove(item);
  void removeAtIndexFromBannerUrls(int index) => bannerUrls.removeAt(index);
  void insertAtIndexInBannerUrls(int index, String item) =>
      bannerUrls.insert(index, item);
  void updateBannerUrlsAtIndex(int index, Function(String) updateFn) =>
      bannerUrls[index] = updateFn(bannerUrls[index]);

  double listPlayerIDContaier = 60.0;

  bool dropListID = false;

  DocumentReference? productReference;

  double? priceTrySelected;

  String? denomImagSelected;

  int? level;

  String? avatarUrl;

  List<EnregistredGameRecord> idEregistredList = [];
  void addToIdEregistredList(EnregistredGameRecord item) =>
      idEregistredList.add(item);
  void removeFromIdEregistredList(EnregistredGameRecord item) =>
      idEregistredList.remove(item);
  void removeAtIndexFromIdEregistredList(int index) =>
      idEregistredList.removeAt(index);
  void insertAtIndexInIdEregistredList(int index, EnregistredGameRecord item) =>
      idEregistredList.insert(index, item);
  void updateIdEregistredListAtIndex(
          int index, Function(EnregistredGameRecord) updateFn) =>
      idEregistredList[index] = updateFn(idEregistredList[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Firestore Query - Query a collection] action in topup widget.
  List<ProductsRecord>? listedGamesDeno1;
  // Stores action output result for [Firestore Query - Query a collection] action in topup widget.
  List<ProductsRecord>? listedGamesDeno2;
  // Stores action output result for [Firestore Query - Query a collection] action in topup widget.
  List<EnregistredGameRecord>? isHaveIdGame;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

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

  // Stores action output result for [Validate Form] action in Button widget.
  bool? validatePlayerID;
  // Stores action output result for [Backend Call - API (Hl Gaming All Data)] action in Button widget.
  ApiCallResponse? chekcId;
  // Stores action output result for [Backend Call - API (URL to FireStorage)] action in Button widget.
  ApiCallResponse? uploadAvatarApi;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EnregistredGameRecord? creatPlayeUidDoc;
  // Stores action output result for [Backend Call - API (PUBG Check ID)] action in Button widget.
  ApiCallResponse? chekcIdPubg;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EnregistredGameRecord? creatPlayeUidPubgDoc;
  // State field(s) for GridView widget.
  ScrollController? gridViewController1;
  // State field(s) for GridView widget.
  ScrollController? gridViewController2;
  // State field(s) for GridView widget.
  ScrollController? gridViewController3;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    textControllerValidator = _textControllerValidator;
    gridViewController1 = ScrollController();
    gridViewController2 = ScrollController();
    gridViewController3 = ScrollController();
  }

  @override
  void dispose() {
    columnController?.dispose();
    expandableExpandableController.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    gridViewController1?.dispose();
    gridViewController2?.dispose();
    gridViewController3?.dispose();
  }
}

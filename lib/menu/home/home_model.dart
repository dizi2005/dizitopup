import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/loading/loading_card_big/loading_card_big_widget.dart';
import '/loading/loading_card_simple/loading_card_simple_widget.dart';
import '/loading/loading_card_vert/loading_card_vert_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  List<String> listGame = [];
  void addToListGame(String item) => listGame.add(item);
  void removeFromListGame(String item) => listGame.remove(item);
  void removeAtIndexFromListGame(int index) => listGame.removeAt(index);
  void insertAtIndexInListGame(int index, String item) =>
      listGame.insert(index, item);
  void updateListGameAtIndex(int index, Function(String) updateFn) =>
      listGame[index] = updateFn(listGame[index]);

  List<String> listImgGame = [];
  void addToListImgGame(String item) => listImgGame.add(item);
  void removeFromListImgGame(String item) => listImgGame.remove(item);
  void removeAtIndexFromListImgGame(int index) => listImgGame.removeAt(index);
  void insertAtIndexInListImgGame(int index, String item) =>
      listImgGame.insert(index, item);
  void updateListImgGameAtIndex(int index, Function(String) updateFn) =>
      listImgGame[index] = updateFn(listImgGame[index]);

  String testPath =
      'https://firebasestorage.googleapis.com/v0/b/play-dash-xj6zpn.firebasestorage.app/o/productsImage%2FPUBG%20Mobile%2FBaseImg.png?alt=media&token=22572fd3-233b-4a73-abef-91a26f93dd7b';

  List<String> bannerUrls = [];
  void addToBannerUrls(String item) => bannerUrls.add(item);
  void removeFromBannerUrls(String item) => bannerUrls.remove(item);
  void removeAtIndexFromBannerUrls(int index) => bannerUrls.removeAt(index);
  void insertAtIndexInBannerUrls(int index, String item) =>
      bannerUrls.insert(index, item);
  void updateBannerUrlsAtIndex(int index, Function(String) updateFn) =>
      bannerUrls[index] = updateFn(bannerUrls[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getAuthProvider] action in home widget.
  String? authProvider;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

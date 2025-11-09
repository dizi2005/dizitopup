import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/loading/loading_card/loading_card_widget.dart';
import '/wallet/transaction_details/transaction_details_widget.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'card_liste_wallet_model.dart';
export 'card_liste_wallet_model.dart';

class CardListeWalletWidget extends StatefulWidget {
  const CardListeWalletWidget({
    super.key,
    this.transactionRef,
    this.pubgListId,
  });

  final DocumentReference? transactionRef;
  final String? pubgListId;

  @override
  State<CardListeWalletWidget> createState() => _CardListeWalletWidgetState();
}

class _CardListeWalletWidgetState extends State<CardListeWalletWidget> {
  late CardListeWalletModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardListeWalletModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.readTransac =
          await TransactionRecord.getDocumentOnce(widget!.transactionRef!);
      if ((_model.readTransac?.deliveryStatut == 0) ||
          (_model.readTransac?.deliveryStatut == 1)) {
        return;
      }

      _model.checkOrder = await TopupEpinStatusCall.call(
        orderId: _model.readTransac?.transactionId,
      );

      if ((_model.checkOrder?.succeeded ?? true)) {
        if (TopupEpinStatusCall.status(
              (_model.checkOrder?.jsonBody ?? ''),
            ) ==
            'failed') {
          await widget!.transactionRef!.update(createTransactionRecordData(
            deliveryStatut: 0,
          ));

          await currentUserReference!.update({
            ...mapToFirestore(
              {
                'amount': FieldValue.increment(_model.readTransac!.price),
              },
            ),
          });

          await widget!.transactionRef!.update(createTransactionRecordData(
            refunded: true,
          ));
        } else if (TopupEpinStatusCall.status(
              (_model.checkOrder?.jsonBody ?? ''),
            ) ==
            'success') {
          await widget!.transactionRef!.update(createTransactionRecordData(
            deliveryStatut: 1,
          ));
        } else {
          while (_model.isValide) {
            await Future.delayed(
              Duration(
                milliseconds: _model.delay,
              ),
            );
            _model.checkOrderLoopApi = await TopupEpinStatusCall.call(
              orderId: _model.readTransac?.transactionId,
            );

            if ((_model.checkOrderLoopApi?.succeeded ?? true)) {
              if (TopupEpinStatusCall.status(
                    (_model.checkOrderLoopApi?.jsonBody ?? ''),
                  ) ==
                  'failed') {
                await widget!.transactionRef!
                    .update(createTransactionRecordData(
                  deliveryStatut: 0,
                ));

                await currentUserReference!.update({
                  ...mapToFirestore(
                    {
                      'amount': FieldValue.increment(_model.readTransac!.price),
                    },
                  ),
                });

                await widget!.transactionRef!
                    .update(createTransactionRecordData(
                  refunded: true,
                ));
                _model.isValide = false;
                _model.messageLog = 'Loop fini - ${TopupEpinStatusCall.status(
                  (_model.checkOrderLoopApi?.jsonBody ?? ''),
                )}';
                safeSetState(() {});
                break;
              } else if (TopupEpinStatusCall.status(
                    (_model.checkOrderLoopApi?.jsonBody ?? ''),
                  ) ==
                  'success') {
                await widget!.transactionRef!
                    .update(createTransactionRecordData(
                  deliveryStatut: 1,
                ));
                _model.isValide = false;
                _model.messageLog = 'Loop fini - ${TopupEpinStatusCall.status(
                  (_model.checkOrderLoopApi?.jsonBody ?? ''),
                )}';
                safeSetState(() {});
                break;
              }

              _model.count = _model.count! + 1;
              safeSetState(() {});
              if (_model.count! > 6) {
                break;
              }
            } else {
              break;
            }
          }
        }
      } else {
        return;
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<TransactionRecord>(
      stream: TransactionRecord.getDocument(widget!.transactionRef!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return LoadingCardWidget();
        }

        final containerTransactionRecord = snapshot.data!;

        return AnimatedContainer(
          duration: Duration(milliseconds: 488),
          curve: Curves.linear,
          width: double.infinity,
          height: 110.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: _model.mouseRegionHovered!
                  ? Color(0x8738BDF8)
                  : FlutterFlowTheme.of(context).demarkStyle,
              width: _model.mouseRegionHovered! ? 2.0 : 1.0,
            ),
          ),
          child: MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            child: Padding(
              padding: EdgeInsets.all(14.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return WebViewAware(
                        child: Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: TransactionDetailsWidget(
                            transacitonRefs:
                                containerTransactionRecord.reference,
                            isConfirm: containerTransactionRecord.statu == 1,
                            isDelivery:
                                containerTransactionRecord.deliveryStatut == 1,
                          ),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Builder(
                            builder: (context) {
                              if (containerTransactionRecord.type == 'DP') {
                                return Icon(
                                  Icons.arrow_downward_rounded,
                                  color: Color(0xFF5CD699),
                                  size: 30.0,
                                );
                              } else if (containerTransactionRecord.type ==
                                  'WT') {
                                return Icon(
                                  Icons.arrow_upward_rounded,
                                  color: FlutterFlowTheme.of(context).error,
                                  size: 30.0,
                                );
                              } else {
                                return Icon(
                                  Icons.shopping_cart_checkout_rounded,
                                  color: FlutterFlowTheme.of(context).style3,
                                  size: 30.0,
                                );
                              }
                            },
                          ),
                          Flexible(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  containerTransactionRecord.productName,
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                                Text(
                                  dateTimeFormat("yMMMd",
                                      containerTransactionRecord.creatAt!),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ].divide(SizedBox(height: 10.0)),
                            ),
                          ),
                        ].divide(SizedBox(width: 10.0)),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: Text(
                              () {
                                if (containerTransactionRecord.refunded) {
                                  return '0.00';
                                } else if (containerTransactionRecord.type ==
                                    'WT') {
                                  return '-${containerTransactionRecord.price.toString()}';
                                } else if (containerTransactionRecord.type ==
                                    'BY') {
                                  return '-${containerTransactionRecord.price.toString()}';
                                } else {
                                  return containerTransactionRecord.price
                                      .toString();
                                }
                              }(),
                              textAlign: TextAlign.end,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: () {
                                      if (containerTransactionRecord.type ==
                                          'WT') {
                                        return FlutterFlowTheme.of(context)
                                            .warning;
                                      } else if (containerTransactionRecord
                                              .type ==
                                          'BY') {
                                        return FlutterFlowTheme.of(context)
                                            .warning;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .accent3;
                                      }
                                    }(),
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                          ),
                          Text(
                            containerTransactionRecord.type == 'BY'
                                ? '${valueOrDefault<String>(
                                    () {
                                      if (containerTransactionRecord
                                              .deliveryStatut ==
                                          1) {
                                        return 'Livrée';
                                      } else if (containerTransactionRecord
                                              .deliveryStatut ==
                                          2) {
                                        return 'En cours';
                                      } else if (containerTransactionRecord
                                              .deliveryStatut ==
                                          3) {
                                        return 'En attente';
                                      } else {
                                        return 'Echoué';
                                      }
                                    }(),
                                    'State Delivery',
                                  )}${containerTransactionRecord.refunded ? ' - Remboursé' : ''}'
                                : valueOrDefault<String>(
                                    () {
                                      if (containerTransactionRecord.statu ==
                                          1) {
                                        return 'Complété';
                                      } else if (containerTransactionRecord
                                              .statu ==
                                          2) {
                                        return 'En cours';
                                      } else if (containerTransactionRecord
                                              .statu ==
                                          3) {
                                        return 'En attente';
                                      } else {
                                        return 'Echoué';
                                      }
                                    }(),
                                    'Statut  Trasaction',
                                  ),
                            textAlign: TextAlign.end,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                        ].divide(SizedBox(height: 7.0)),
                      ),
                    ),
                  ].divide(SizedBox(width: 16.0)),
                ),
              ),
            ),
            onEnter: ((event) async {
              safeSetState(() => _model.mouseRegionHovered = true);
            }),
            onExit: ((event) async {
              safeSetState(() => _model.mouseRegionHovered = false);
            }),
          ),
        );
      },
    );
  }
}

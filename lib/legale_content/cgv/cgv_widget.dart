import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cgv_model.dart';
export 'cgv_model.dart';

class CgvWidget extends StatefulWidget {
  const CgvWidget({super.key});

  static String routeName = 'CGV';
  static String routePath = '/cgv';

  @override
  State<CgvWidget> createState() => _CgvWidgetState();
}

class _CgvWidgetState extends State<CgvWidget> {
  late CgvModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CgvModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.safePop();
                        },
                        child: Icon(
                          Icons.chevron_left_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: MediaQuery.sizeOf(context).width <= 600.0
                              ? 30.0
                              : 40.0,
                        ),
                      ),
                      Text(
                        'Conditions générales de vente (CGV)',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .headlineMediumFamily,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .headlineMediumIsCustom,
                            ),
                      ),
                    ].divide(SizedBox(width: 15.0)),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: FlutterFlowWebView(
                        content:
                            '<!DOCTYPE html>\n<html lang=\"fr\">\n<head>\n  <meta charset=\"UTF-8\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n  <title>Conditions Générales de Vente – SkyBund</title>\n  <style>\n    body {\n      font-family: \'Inter\', Arial, sans-serif;\n      background-color: #0f172a;\n      color: #e2e8f0;\n      margin: 0;\n      padding: 0;\n      line-height: 1.7;\n    }\n\n    header {\n      background: linear-gradient(135deg, #1e293b, #334155);\n      text-align: center;\n      padding: 2rem 1rem;\n      border-bottom: 1px solid #475569;\n    }\n\n    header h1 {\n      color: #ffffff;\n      font-size: 2rem;\n      margin-bottom: 0.5rem;\n      letter-spacing: 1px;\n    }\n\n    header p {\n      color: #94a3b8;\n      font-size: 0.95rem;\n    }\n\n    main {\n      max-width: 900px;\n      margin: 2rem auto;\n      padding: 2rem;\n      background: rgba(255, 255, 255, 0.03);\n      border-radius: 16px;\n      box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);\n    }\n\n    h2 {\n      color: #38bdf8;\n      font-size: 1.4rem;\n      margin-top: 2rem;\n      margin-bottom: 0.5rem;\n      border-left: 3px solid #38bdf8;\n      padding-left: 0.6rem;\n    }\n\n    p, li {\n      font-size: 1rem;\n      color: #e2e8f0;\n    }\n\n    ul {\n      padding-left: 1.2rem;\n    }\n\n    a {\n      color: #38bdf8;\n      text-decoration: none;\n      transition: 0.2s ease;\n    }\n\n    a:hover {\n      color: #7dd3fc;\n      text-decoration: underline;\n    }\n\n    footer {\n      text-align: center;\n      margin-top: 3rem;\n      padding: 1.5rem;\n      font-size: 0.9rem;\n      color: #94a3b8;\n      border-top: 1px solid #334155;\n    }\n\n    @media (max-width: 600px) {\n      header h1 {\n        font-size: 1.6rem;\n      }\n      main {\n        padding: 1.2rem;\n      }\n      h2 {\n        font-size: 1.2rem;\n      }\n    }\n  </style>\n</head>\n<body>\n  <header>\n    <h1>Conditions Générales de Vente (CGV)</h1>\n    <p>Dernière mise à jour : 14 octobre 2025</p>\n  </header>\n\n  <main>\n    <h2>1. Objet</h2>\n    <p>Les présentes Conditions Générales de Vente (CGV) définissent les règles applicables à toute commande de produits numériques (crédits de jeux, top-ups, cartes prépayées, soldes virtuels, etc.) effectuée via la plateforme <strong>SkyBund</strong>.</p>\n    <p>SkyBund agit comme opérateur technique et commercial, mettant en relation les clients avec des vendeurs partenaires, notamment <strong>DiziTopUp</strong>, responsable de la fourniture et de la livraison effective des produits achetés.</p>\n    <p>L’achat d’un produit sur la plateforme implique l’acceptation sans réserve des présentes CGV.</p>\n\n    <h2>2. Produits et Commandes</h2>\n    <p>Les produits proposés sur SkyBund sont exclusivement des biens numériques livrés électroniquement.</p>\n    <p>Le Client reconnaît avoir pris connaissance des caractéristiques du produit avant la validation de sa commande. Les informations saisies lors de la commande (ex. identifiant de joueur, UID, pseudo, serveur, etc.) relèvent de la responsabilité du Client.</p>\n    <p>Une commande validée et transmise ne peut être annulée que si :</p>\n    <ul>\n      <li>le paiement n’a pas encore été traité, ou</li>\n      <li>la commande n’a pas encore été envoyée au vendeur pour exécution.</li>\n    </ul>\n\n    <h2>3. Prix et Moyens de Paiement</h2>\n    <p>Les prix affichés sur la plateforme sont indiqués dans la devise du pays où le produit est proposé à la vente.</p>\n    <p>Les paiements s’effectuent par les moyens sécurisés proposés sur la plateforme (carte, portefeuille virtuel ou autres solutions partenaires).</p>\n    <p>SkyBund se réserve le droit de refuser ou d’annuler toute commande en cas de suspicion de fraude, d’utilisation abusive du système ou de non-respect des présentes CGV.</p>\n\n    <h2>4. Livraison</h2>\n    <p>Les produits numériques sont généralement livrés instantanément ou sous quelques minutes après la validation du paiement.</p>\n    <p>Un léger délai (jusqu’à 15 minutes) peut survenir en cas de vérification, de surcharge technique ou de maintenance.</p>\n    <p>La livraison est considérée comme effectuée dès que :</p>\n    <ul>\n      <li>le code, le crédit ou le top-up a été délivré ou confirmé,</li>\n      <li>ou que le statut de la commande indique « livrée » ou « complétée ».</li>\n    </ul>\n    <p>Toute anomalie (erreur d’UID, non-réception, retard anormal) doit être signalée dans un délai de 30 minutes après la commande, via le support de <strong>DiziTopUp</strong> ou celui de <strong>SkyBund</strong>.</p>\n\n    <h2>5. Dépôts et Soldes de Compte</h2>\n    <p>Le Client peut recharger son portefeuille virtuel sur SkyBund afin d’effectuer des achats rapides. Ces dépôts sont liés au compte utilisateur et peuvent être utilisés uniquement pour les transactions internes.</p>\n\n    <h3>A. Remboursement des dépôts</h3>\n    <ul>\n      <li>En cas de problème technique avéré (erreur de crédit, dysfonctionnement serveur, double paiement, etc.), un remboursement peut être effectué après vérification par le vendeur partenaire (ex. <strong>DiziTopUp</strong>) ou par <strong>SkyBund</strong>.</li>\n      <li>Aucun retrait volontaire ou transfert externe des dépôts n’est autorisé.</li>\n      <li>Le solde non utilisé reste disponible sur le compte du Client jusqu’à utilisation future.</li>\n    </ul>\n\n    <h2>6. Remboursements</h2>\n    <ul>\n      <li><strong>Commandes automatiques non livrées :</strong> en cas d’échec technique, le remboursement est automatique vers le portefeuille du Client.</li>\n      <li><strong>Commandes annulées avant livraison :</strong> le montant est recrédité sur le portefeuille du Client.</li>\n      <li><strong>Problèmes techniques validés par le vendeur :</strong> le remboursement est traité après vérification et approbation du vendeur partenaire.</li>\n      <li><strong>Absence de droit de rétractation volontaire :</strong> une fois le produit livré ou activé, aucun remboursement volontaire n’est possible.</li>\n    </ul>\n    <p>Tous les remboursements sont effectués exclusivement sur le même portefeuille virtuel SkyBund, sans transfert externe (virement, crypto, PayPal, etc.).</p>\n\n    <h2>7. Responsabilités</h2>\n    <p><strong>SkyBund</strong> fournit l’infrastructure technique, la sécurité des paiements et la supervision des transactions, mais n’est pas responsable de la qualité ou du contenu des produits livrés par les vendeurs partenaires.</p>\n    <p><strong>DiziTopUp</strong> assume la responsabilité de la livraison effective des produits achetés via SkyBund, y compris la gestion des vérifications, délais de traitement et remboursements techniques.</p>\n    <p>Le <strong>Client</strong> s’engage à fournir des informations exactes, à utiliser son compte de manière sécurisée, et reconnaît qu’une erreur dans les données du jeu ne peut donner lieu à remboursement.</p>\n\n    <h2>8. Réclamations et Support</h2>\n    <p>Toute réclamation doit être transmise selon la hiérarchie suivante :</p>\n    <ul>\n      <li><strong>Vendeur partenaire DiziTopUp :</strong> <a href=\"https://wa.me/50947721614\" target=\"_blank\">WhatsApp</a></li>\n      <li><strong>SkyBund :</strong> <a href=\"https://wa.me/14383656731\" target=\"_blank\">WhatsApp</a></li>\n    </ul>\n    <p>Les équipes s’engagent à répondre dans un délai de 24 à 48 heures ouvrées.</p>\n\n    <h2>9. Fraude et Sécurité</h2>\n    <p>Toute tentative de fraude, d’annulation abusive ou de détournement de fonds entraînera :</p>\n    <ul>\n      <li>la suspension immédiate du compte,</li>\n      <li>la perte du solde disponible,</li>\n      <li>et, si nécessaire, un signalement aux autorités compétentes.</li>\n    </ul>\n\n    <h2>10. Loi Applicable et Litiges</h2>\n    <p>Les présentes CGV sont régies par le droit québécois et canadien. Tout litige sera soumis aux tribunaux compétents du district de Montréal, sauf accord amiable préalable.</p>\n\n    <h2>11. Contact</h2>\n    <p><strong>SkyBund Canada</strong><br>\n      <a href=\"https://wa.me/14383656731\" target=\"_blank\">Contact WhatsApp</a><br>\n    </p>\n\n    <p><strong>Vendeur partenaire : DiziTopUp</strong><br>\n      <a href=\"https://wa.me/50947721614\" target=\"_blank\">Contact WhatsApp</a><br>\n      <a href=\"https://www.dizitopup.com\" target=\"_blank\">www.dizitopup.com</a>\n    </p>\n  </main>\n\n  <footer>\n    &copy; 2025 SkyBund – Tous droits réservés.\n  </footer>\n</body>\n</html>\n',
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        verticalScroll: false,
                        horizontalScroll: false,
                        html: true,
                      ),
                    ),
                  ),
                ),
              ]
                  .addToStart(SizedBox(height: 25.0))
                  .addToEnd(SizedBox(height: 30.0)),
            ),
          ),
        ),
      ),
    );
  }
}

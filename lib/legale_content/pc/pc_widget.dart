import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pc_model.dart';
export 'pc_model.dart';

class PcWidget extends StatefulWidget {
  const PcWidget({super.key});

  static String routeName = 'PC';
  static String routePath = '/pc';

  @override
  State<PcWidget> createState() => _PcWidgetState();
}

class _PcWidgetState extends State<PcWidget> {
  late PcModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PcModel());

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
                        'Politique de Confidentialité',
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
                            '<!DOCTYPE html>\n<html lang=\"fr\">\n<head>\n  <meta charset=\"UTF-8\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n  <title>Politique de Confidentialité – SkyBund</title>\n  <style>\n    body {\n      font-family: \'Inter\', Arial, sans-serif;\n      background-color: #0f172a;\n      color: #e2e8f0;\n      margin: 0;\n      padding: 0;\n      line-height: 1.7;\n    }\n\n    header {\n      background: linear-gradient(135deg, #1e293b, #334155);\n      text-align: center;\n      padding: 2rem 1rem;\n      border-bottom: 1px solid #475569;\n    }\n\n    header h1 {\n      color: #ffffff;\n      font-size: 2rem;\n      margin-bottom: 0.5rem;\n      letter-spacing: 1px;\n    }\n\n    header p {\n      color: #94a3b8;\n      font-size: 0.95rem;\n    }\n\n    main {\n      max-width: 900px;\n      margin: 2rem auto;\n      padding: 2rem;\n      background: rgba(255, 255, 255, 0.03);\n      border-radius: 16px;\n      box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);\n    }\n\n    h2 {\n      color: #38bdf8;\n      font-size: 1.4rem;\n      margin-top: 2rem;\n      margin-bottom: 0.5rem;\n      border-left: 3px solid #38bdf8;\n      padding-left: 0.6rem;\n    }\n\n    p, li {\n      font-size: 1rem;\n      color: #e2e8f0;\n    }\n\n    ul {\n      padding-left: 1.2rem;\n    }\n\n    a {\n      color: #38bdf8;\n      text-decoration: none;\n      transition: 0.2s ease;\n    }\n\n    a:hover {\n      color: #7dd3fc;\n      text-decoration: underline;\n    }\n\n    footer {\n      text-align: center;\n      margin-top: 3rem;\n      padding: 1.5rem;\n      font-size: 0.9rem;\n      color: #94a3b8;\n      border-top: 1px solid #334155;\n    }\n\n    @media (max-width: 600px) {\n      header h1 {\n        font-size: 1.6rem;\n      }\n      main {\n        padding: 1.2rem;\n      }\n      h2 {\n        font-size: 1.2rem;\n      }\n    }\n  </style>\n</head>\n<body>\n  <header>\n    <h1>Politique de Confidentialité</h1>\n    <p>Dernière mise à jour : 14 octobre 2025</p>\n  </header>\n\n  <main>\n    <h2>1. Introduction</h2>\n    <p>La présente Politique de Confidentialité décrit la manière dont <strong>SkyBund</strong> collecte, utilise, conserve et protège les informations personnelles de ses utilisateurs dans le cadre de l’utilisation de la plateforme.</p>\n    <p>Elle s’applique à tous les utilisateurs de SkyBund, y compris ceux qui interagissent avec les vendeurs partenaires tels que <strong>DiziTopUp</strong>.</p>\n\n    <h2>2. Collecte des informations</h2>\n    <p>Nous pouvons collecter les informations suivantes lors de l’utilisation de nos services :</p>\n    <ul>\n      <li>Données d’identification (nom, identifiant de compte, identifiant de joueur, pseudo, adresse IP)</li>\n      <li>Données de contact (numéro WhatsApp, pays, langue préférée)</li>\n      <li>Données de transaction (commandes, montants dépensés, portefeuilles virtuels, historique de paiement)</li>\n      <li>Données techniques (type d’appareil, navigateur, système d’exploitation, cookies, adresses IP)</li>\n    </ul>\n    <p>Toutes les données sont collectées dans le respect des lois applicables et uniquement à des fins légitimes liées à la prestation de nos services.</p>\n\n    <h2>3. Utilisation des données</h2>\n    <p>Les données personnelles collectées sont utilisées pour :</p>\n    <ul>\n      <li>Traiter et exécuter les commandes effectuées sur SkyBund</li>\n      <li>Assurer le suivi du portefeuille virtuel et des remboursements automatiques</li>\n      <li>Garantir la sécurité et la prévention contre la fraude</li>\n      <li>Améliorer la qualité du service et de l’expérience utilisateur</li>\n      <li>Offrir un support client efficace et personnalisé</li>\n    </ul>\n    <p>SkyBund ne vend ni ne loue jamais les données personnelles à des tiers.</p>\n\n    <h2>4. Partage des données</h2>\n    <p>Les informations personnelles peuvent être partagées uniquement avec :</p>\n    <ul>\n      <li>Les <strong>vendeurs partenaires</strong> (ex. <strong>DiziTopUp</strong>) afin de permettre l’exécution des commandes</li>\n      <li>Les <strong>prestataires techniques</strong> (hébergeurs, services de paiement sécurisés, outils d’analyse)</li>\n      <li>Les <strong>autorités légales</strong> en cas d’obligation juridique ou d’enquête de sécurité</li>\n    </ul>\n    <p>Tous nos partenaires sont contractuellement tenus de respecter la confidentialité et la sécurité des données.</p>\n\n    <h2>5. Conservation des données</h2>\n    <p>Les données personnelles sont conservées aussi longtemps que le compte est actif ou pour la durée nécessaire à la conformité légale et à la sécurité des transactions.</p>\n    <p>Les données liées aux transactions peuvent être conservées jusqu’à <strong>24 mois</strong> après la fermeture du compte pour des raisons de vérification ou d’audit interne.</p>\n\n    <h2>6. Sécurité des données</h2>\n    <p>SkyBund met en œuvre des mesures de sécurité avancées pour protéger les informations des utilisateurs :</p>\n    <ul>\n      <li>Chiffrement des communications (HTTPS, SSL)</li>\n      <li>Stockage sécurisé sur serveurs conformes aux normes internationales</li>\n      <li>Accès limité aux seules personnes autorisées</li>\n      <li>Audit régulier des systèmes et sauvegardes sécurisées</li>\n    </ul>\n\n    <h2>7. Portefeuille virtuel et paiements</h2>\n    <p>Les informations de paiement ne sont jamais conservées directement par SkyBund.</p>\n    <p>Les transactions financières sont gérées via des prestataires certifiés, garantissant la sécurité et la confidentialité des paiements.</p>\n    <p>Le solde du portefeuille virtuel est stocké de manière interne et n’est accessible qu’à l’utilisateur concerné.</p>\n\n    <h2>8. Cookies et technologies similaires</h2>\n    <p>SkyBund utilise des cookies et technologies similaires afin d’améliorer la navigation et la performance du site. Ces cookies servent notamment à :</p>\n    <ul>\n      <li>Mémoriser les préférences de l’utilisateur</li>\n      <li>Sécuriser les sessions actives</li>\n      <li>Analyser le trafic pour améliorer les fonctionnalités</li>\n    </ul>\n    <p>L’utilisateur peut désactiver les cookies dans son navigateur, mais certaines fonctionnalités risquent de ne plus fonctionner correctement.</p>\n\n    <h2>9. Droits de l’utilisateur</h2>\n    <p>Conformément aux lois canadiennes et québécoises sur la protection des données, chaque utilisateur dispose des droits suivants :</p>\n    <ul>\n      <li>Droit d’accès à ses données personnelles</li>\n      <li>Droit de rectification ou de suppression</li>\n      <li>Droit d’opposition à certains traitements</li>\n      <li>Droit à la portabilité des données, si applicable</li>\n    </ul>\n    <p>Toute demande peut être effectuée via notre canal WhatsApp officiel.</p>\n\n    <h2>10. Partenaires et responsabilité</h2>\n    <p>Les vendeurs partenaires tels que <strong>DiziTopUp</strong> ont accès uniquement aux données nécessaires à la bonne exécution de leurs commandes.</p>\n    <p>SkyBund reste responsable de la sécurité et de la gestion des données hébergées sur sa plateforme.</p>\n\n    <h2>11. Modifications de la Politique</h2>\n    <p>SkyBund peut modifier la présente Politique de Confidentialité à tout moment pour l’adapter aux évolutions légales, techniques ou commerciales. Les utilisateurs seront informés en cas de changement majeur.</p>\n\n    <h2>12. Contact</h2>\n    <p><strong>SkyBund Canada</strong><br>\n      <a href=\"https://wa.me/14383656731\" target=\"_blank\">Contact WhatsApp</a><br>\n    </p>\n\n    <p><strong>Vendeur partenaire : DiziTopUp</strong><br>\n      <a href=\"https://wa.me/50947721614\" target=\"_blank\">Contact WhatsApp</a><br>\n      <a href=\"https://www.dizitopup.com\" target=\"_blank\">www.dizitopup.com</a>\n    </p>\n  </main>\n\n  <footer>\n    &copy; 2025 SkyBund – Tous droits réservés.\n  </footer>\n</body>\n</html>\n',
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

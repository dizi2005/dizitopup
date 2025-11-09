import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mlr_model.dart';
export 'mlr_model.dart';

class MlrWidget extends StatefulWidget {
  const MlrWidget({super.key});

  static String routeName = 'MLR';
  static String routePath = '/mlr';

  @override
  State<MlrWidget> createState() => _MlrWidgetState();
}

class _MlrWidgetState extends State<MlrWidget> {
  late MlrModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MlrModel());

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
                        'Mentions légales et responsabilité',
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
                            '<!DOCTYPE html>\n<html lang=\"fr\">\n<head>\n  <meta charset=\"UTF-8\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n  <title>Mentions Légales et Responsabilités – SkyBund</title>\n  <style>\n    body {\n      font-family: \'Inter\', Arial, sans-serif;\n      background-color: #0f172a;\n      color: #e2e8f0;\n      margin: 0;\n      padding: 0;\n      line-height: 1.7;\n    }\n\n    header {\n      background: linear-gradient(135deg, #1e293b, #334155);\n      text-align: center;\n      padding: 2rem 1rem;\n      border-bottom: 1px solid #475569;\n    }\n\n    header h1 {\n      color: #ffffff;\n      font-size: 2rem;\n      margin-bottom: 0.5rem;\n      letter-spacing: 1px;\n    }\n\n    header p {\n      color: #94a3b8;\n      font-size: 0.95rem;\n    }\n\n    main {\n      max-width: 900px;\n      margin: 2rem auto;\n      padding: 2rem;\n      background: rgba(255, 255, 255, 0.03);\n      border-radius: 16px;\n      box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);\n    }\n\n    h2 {\n      color: #38bdf8;\n      font-size: 1.4rem;\n      margin-top: 2rem;\n      margin-bottom: 0.5rem;\n      border-left: 3px solid #38bdf8;\n      padding-left: 0.6rem;\n    }\n\n    p, li {\n      font-size: 1rem;\n      color: #e2e8f0;\n    }\n\n    ul {\n      padding-left: 1.2rem;\n    }\n\n    a {\n      color: #38bdf8;\n      text-decoration: none;\n      transition: 0.2s ease;\n    }\n\n    a:hover {\n      color: #7dd3fc;\n      text-decoration: underline;\n    }\n\n    footer {\n      text-align: center;\n      margin-top: 3rem;\n      padding: 1.5rem;\n      font-size: 0.9rem;\n      color: #94a3b8;\n      border-top: 1px solid #334155;\n    }\n\n    @media (max-width: 600px) {\n      header h1 {\n        font-size: 1.6rem;\n      }\n      main {\n        padding: 1.2rem;\n      }\n      h2 {\n        font-size: 1.2rem;\n      }\n    }\n  </style>\n</head>\n<body>\n  <header>\n    <h1>Mentions Légales et Responsabilités</h1>\n    <p>Dernière mise à jour : 14 octobre 2025</p>\n  </header>\n\n  <main>\n    <h2>1. Éditeur du site</h2>\n    <p>Le site et la plateforme <strong>SkyBund</strong> sont édités par <strong>SkyBund Canada</strong>, entreprise technologique basée à Montréal, Québec (Canada).</p>\n    <p>WhatsApp : <a href=\"https://wa.me/14383656731\" target=\"_blank\">Contact WhatsApp</a><br>\n    <p>L’hébergement du site est assuré par un prestataire sécurisé conforme aux normes internationales de protection des données.</p>\n\n    <h2>2. Activité</h2>\n    <p><strong>SkyBund</strong> est une entreprise spécialisée dans la conception, le développement et l’exploitation de plateformes numériques, dont la marketplace SkyBund Marketplace.</p>\n    <p>Elle agit comme <strong>opérateur technologique</strong> et <strong>intermédiaire commercial</strong>, permettant à des vendeurs partenaires tels que <strong>DiziTopUp</strong> de distribuer leurs produits numériques à des utilisateurs situés dans différentes régions du monde.</p>\n\n    <h2>3. Responsabilités</h2>\n    <p>SkyBund met tout en œuvre pour assurer la fiabilité et la sécurité de ses services.</p>\n    <p>Toutefois, SkyBund ne saurait être tenue responsable :</p>\n    <ul>\n      <li>des interruptions temporaires de service dues à la maintenance ou à des causes techniques ;</li>\n      <li>des erreurs provenant des informations fournies par les partenaires ou les utilisateurs ;</li>\n      <li>des retards ou manquements imputables aux vendeurs tiers.</li>\n    </ul>\n    <p>Les partenaires (ex. <strong>DiziTopUp</strong>) demeurent seuls responsables de la conformité, de la livraison et du support lié aux produits qu’ils vendent.</p>\n\n    <h2>4. Propriété intellectuelle</h2>\n    <p>Tous les éléments du site SkyBund (logos, textes, visuels, interfaces, codes sources) sont protégés par le droit d’auteur et la propriété intellectuelle.</p>\n    <p>Toute reproduction, modification ou utilisation non autorisée est strictement interdite sans l’accord écrit préalable de SkyBund.</p>\n    <p>Les noms, logos et marques relatifs à des jeux ou produits numériques appartiennent à leurs éditeurs respectifs et sont utilisés sur la plateforme à titre informatif et commercial.</p>\n\n    <h2>5. Données personnelles</h2>\n    <p>Le traitement des données collectées sur la plateforme SkyBund est régi par la <strong>Politique de Confidentialité</strong>, disponible séparément.</p>\n    <p>SkyBund s’engage à assurer la protection, la confidentialité et la sécurité des données de ses utilisateurs.</p>\n\n    <h2>6. Droit applicable</h2>\n    <p>Le présent site et ses mentions légales sont régis par le <strong>droit québécois et canadien</strong>.</p>\n    <p>Tout litige relatif à son utilisation relève de la compétence des tribunaux du <strong>district de Montréal</strong>, sauf accord amiable préalable.</p>\n\n    <h2>7. Contact</h2>\n    <p><strong>SkyBund Canada</strong><br>\n      Montréal, Québec, Canada<br>\n      <a href=\"https://wa.me/14383656731\" target=\"_blank\">Contact WhatsApp</a><br>\n    </p>\n\n    <p><strong>Vendeur partenaire : DiziTopUp</strong><br>\n      <a href=\"https://wa.me/50947721614\" target=\"_blank\">Contact WhatsApp</a><br>\n      <a href=\"https://www.dizitopup.com\" target=\"_blank\">www.dizitopup.com</a>\n    </p>\n  </main>\n\n  <footer>\n    &copy; 2025 SkyBund – Tous droits réservés.\n  </footer>\n</body>\n</html>\n',
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

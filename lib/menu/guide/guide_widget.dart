import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'guide_model.dart';
export 'guide_model.dart';

class GuideWidget extends StatefulWidget {
  const GuideWidget({super.key});

  static String routeName = 'guide';
  static String routePath = '/guide';

  @override
  State<GuideWidget> createState() => _GuideWidgetState();
}

class _GuideWidgetState extends State<GuideWidget> {
  late GuideModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GuideModel());

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
                        'Guide d\'utilisation',
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
                            '<!DOCTYPE html>\n<html lang=\"fr\">\n\n<head>\n  <meta charset=\"UTF-8\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n  <title>Guide DiziTopUp</title>\n\n  <!-- 🌐 Font Awesome -->\n  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css\">\n\n  <style>\n    :root {\n      --bg: #0f172a;\n      --accent: #38bdf8;\n      --text: #e2e8f0;\n      --card: rgba(255, 255, 255, 0.04);\n      --border: rgba(255, 255, 255, 0.08);\n      --transition: 0.35s ease;\n    }\n\n    body {\n      font-family: \'Inter\', \'Poppins\', sans-serif;\n      background: var(--bg);\n      color: var(--text);\n      margin: 0;\n      padding: 2rem;\n      display: flex;\n      flex-direction: column;\n      align-items: center;\n      min-height: 100vh;\n    }\n\n    h1 {\n      color: var(--accent);\n      font-size: 2rem;\n      margin-bottom: 2rem;\n      text-align: center;\n      letter-spacing: 0.5px;\n    }\n\n    .section {\n      width: 100%;\n      max-width: 800px;\n      background: var(--card);\n      border: 1px solid var(--border);\n      border-radius: 14px;\n      margin-bottom: 1rem;\n      overflow: hidden;\n      box-shadow: 0 0 18px rgba(56, 189, 248, 0.1);\n    }\n\n    .section-header {\n      cursor: pointer;\n      padding: 1rem 1.5rem;\n      font-size: 1.1rem;\n      font-weight: 600;\n      color: var(--accent);\n      display: flex;\n      align-items: center;\n      justify-content: space-between;\n      background: rgba(56, 189, 248, 0.07);\n      border-bottom: 1px solid var(--border);\n      transition: background var(--transition);\n    }\n\n    .section-header:hover {\n      background: rgba(56, 189, 248, 0.12);\n    }\n\n    .section-content {\n      max-height: 0;\n      overflow: hidden;\n      transition: max-height 0.4s ease;\n    }\n\n    .section.open .section-content {\n      max-height: 1000px;\n      overflow-y: auto;\n      transition: max-height 0.6s ease;\n      scrollbar-width: thin;\n      scrollbar-color: var(--accent) transparent;\n    }\n\n    .sub-section {\n      margin: 10px;\n      background: rgba(255, 255, 255, 0.02);\n      border-left: 3px solid var(--accent);\n      border-radius: 8px;\n      overflow: hidden;\n    }\n\n    .sub-header {\n      cursor: pointer;\n      padding: 0.8rem 1rem;\n      display: flex;\n      align-items: center;\n      justify-content: space-between;\n      color: var(--text);\n      font-weight: 500;\n      transition: color var(--transition);\n    }\n\n    .sub-header:hover {\n      color: #7dd3fc;\n    }\n\n    .sub-content {\n      max-height: 0;\n      overflow: hidden;\n      transition: max-height 0.4s ease;\n      padding: 0 1rem;\n    }\n\n    .sub-section.open .sub-content {\n      max-height: 800px;\n      overflow-y: auto;\n      transition: max-height 0.6s ease;\n      padding: 1rem;\n      scrollbar-width: thin;\n      scrollbar-color: var(--accent) transparent;\n    }\n\n    .step {\n      margin-bottom: 1.4rem;\n    }\n\n    .step h4 {\n      color: var(--accent);\n      margin-bottom: 0.4rem;\n      display: flex;\n      align-items: center;\n      gap: 0.5rem;\n    }\n\n    .step img {\n      width: 30%;\n      border-radius: 10px;\n      margin-top: 0.5rem;\n      cursor: pointer;\n      box-shadow: 0 0 15px rgba(56, 189, 248, 0.25);\n      transition: transform 0.2s ease;\n    }\n\n    .step img:hover {\n      transform: scale(1.02);\n    }\n\n    .arrow {\n      transition: transform var(--transition);\n    }\n\n    .open .arrow {\n      transform: rotate(90deg);\n    }\n\n    .icon-left {\n      margin-right: 10px;\n    }\n\n    /* 🖼️ Popup Zoom Image */\n    .popup {\n      position: fixed;\n      top: 0;\n      left: 0;\n      width: 100%;\n      height: 100%;\n      background: rgba(0, 0, 0, 0.85);\n      display: none;\n      justify-content: center;\n      align-items: center;\n      z-index: 999;\n    }\n\n    .popup img {\n      max-width: 90%;\n      max-height: 85%;\n      border-radius: 12px;\n      box-shadow: 0 0 25px rgba(56, 189, 248, 0.6);\n    }\n\n    .popup.show {\n      display: flex;\n    }\n\n    .popup::after {\n      content: \"✕\";\n      position: absolute;\n      top: 30px;\n      right: 40px;\n      font-size: 28px;\n      color: #fff;\n      cursor: pointer;\n      font-weight: bold;\n    }\n  </style>\n</head>\n\n<body>\n  <!-- 💰 Portefeuille Dizi -->\n  <div class=\"section\">\n    <div class=\"section-header\">\n      <span><i class=\"fa-solid fa-wallet icon-left\"></i> Portefeuille Dizi</span>\n      <i class=\"fa-solid fa-chevron-right arrow\"></i>\n    </div>\n    <div class=\"section-content\">\n      <div class=\"sub-section\">\n        <div class=\"sub-header\">\n          <span><i class=\"fa-solid fa-money-bill-transfer icon-left\"></i> Comment faire un dépôt</span>\n          <i class=\"fa-solid fa-chevron-right arrow\"></i>\n        </div>\n        <div class=\"sub-content\">\n          <div class=\"step\">\n            <h4><i class=\"fa-solid fa-arrow-right\"></i> Accéder à la section Portefeuille</h4>\n            <p>\n              Depuis la page d’accueil, ouvrez la section <b>Portefeuille</b> en bas de l’écran.\n              Cette page affiche votre solde actuel et l’historique de vos transactions.\n            </p>\n            <img\n              src=\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tt5e53ed4-5fantf/assets/8rhwd8z1ink3/WhatsApp_Image_2025-11-08_%C3%A0_14.12.39_3a37b4eb.jpg\"\n              alt=\"Accéder au portefeuille\">\n          </div>\n\n          <div class=\"step\">\n            <h4><i class=\"fa-solid fa-plus-circle\"></i> Ajouter de l’argent à votre portefeuille</h4>\n            <p>\n              Cliquez sur le bouton <b>Ajouter de l’argent</b> puis sélectionnez la méthode de paiement souhaitée,\n              par exemple <b>MonCash</b>. Indiquez le montant que vous souhaitez déposer, puis confirmez l’opération.\n            </p>\n            <img\n              src=\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tt5e53ed4-5fantf/assets/ttcdlo8674uy/WhatsApp_Image_2025-11-08_%C3%A0_14.12.39_b40c3ca0.jpg\"\n              alt=\"Ajouter de l\'argent\">\n          </div>\n\n          <div class=\"step\">\n            <h4><i class=\"fa-solid fa-file-invoice\"></i> Envoyer la preuve de transaction</h4>\n            <p>\n              Suivez les instructions ci-dessous pour compléter correctement votre dépôt :\n            </p>\n            <ul>\n              <li>Choisissez votre <b>moyen de dépôt</b> (par exemple : MonCash).</li>\n              <li>Entrez le <b>montant à déposer</b>.</li>\n              <li>Vous serez ensuite <b>redirigé vers WhatsApp</b> avec un message pré-rempli.</li>\n            </ul>\n            <img\n              src=\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tt5e53ed4-5fantf/assets/4li4nt2xj9k7/WhatsApp_Image_2025-11-08_%C3%A0_14.12.39_0f99b7d9.jpg\"\n              alt=\"Preuve de transaction\">\n            <p>\n              Il est très important de <b>ne pas modifier le message</b> généré par l’application lors de la redirection\n              vers WhatsApp.\n              Ce message contient les informations nécessaires pour que notre système puisse <b>créer et identifier\n                votre dépôt</b> automatiquement.\n            </p>\n\n            <p style=\"margin-top:15px;\">\n              Une fois le message envoyé, notre équipe attendra la <b>preuve de votre transaction</b> afin de procéder à\n              la vérification.\n              Cette étape est obligatoire pour confirmer votre paiement.\n            </p>\n\n            <p>\n              Merci de nous transmettre l’une des preuves suivantes :\n            </p>\n\n            <ul>\n              <li>Une capture d’écran ou une photo nette de la transaction (avec les informations bien visibles)</li>\n              <li>L’identifiant de la transaction</li>\n              <li>Le nom de l’agent ou du point de dépôt</li>\n            </ul>\n\n            <p style=\"margin-top:15px;\">\n              Dès que votre preuve est reçue et validée, <b>votre dépôt sera automatiquement confirmé</b> et le montant\n              correspondant\n              sera ajouté à votre portefeuille DiziTopUp.\n            </p>\n\n            <p style=\"margin-top:10px; color:#facc15;\">\n              Important : sans preuve valide, le dépôt ne pourra pas être traité rapidement ou pourra être marqué comme\n              invalide.\n            </p>\n\n          </div>\n\n        </div>\n      </div>\n    </div>\n  </div>\n\n  <div class=\"section\">\n    <div class=\"section-header\">\n      <span><i class=\"fa-solid fa-fire icon-left\"></i> Free Fire</span>\n      <i class=\"fa-solid fa-chevron-right arrow\"></i>\n    </div>\n    <div class=\"section-content\">\n      <div class=\"sub-section open\">\n        <div class=\"sub-header\">\n          <span><i class=\"fa-solid fa-gamepad icon-left\"></i> Comment recharger sur Free Fire</span>\n          <i class=\"fa-solid fa-chevron-right arrow\"></i>\n        </div>\n        <div class=\"sub-content\">\n\n          <!-- Étape 1 -->\n          <div class=\"step\">\n            <h4><i class=\"fa-solid fa-1\"></i> Étape 1 : Entrez votre identifiant de compte Free Fire</h4>\n            <p>\n              Sur la page de recharge, saisissez l’<b>ID de votre compte de jeu</b> afin que le système puisse\n              identifier\n              votre profil.\n              Vérifiez bien qu’il s’agit du bon identifiant avant de poursuivre.\n            </p>\n            <img\n              src=\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tt5e53ed4-5fantf/assets/lazqeyagyu3s/WhatsApp_Image_2025-11-08_%C3%A0_13.41.13_237d821d.jpg\"\n              alt=\"Entrer l\'identifiant Free Fire\">\n            <img\n              src=\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tt5e53ed4-5fantf/assets/yl94a32ysu68/WhatsApp_Image_2025-11-08_%C3%A0_13.41.13_8eb8907b.jpg\"\n              alt=\"Vérifier l\'identifiant Free Fire\">\n            <img\n              src=\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tt5e53ed4-5fantf/assets/5unphjdmro93/WhatsApp_Image_2025-11-08_%C3%A0_14.50.53_810c0476.jpg\"\n              alt=\"Confirmation ID Free Fire\">\n          </div>\n\n          <!-- Étape 2 -->\n          <div class=\"step\">\n            <h4><i class=\"fa-solid fa-2\"></i> Étape 2 : Choisissez votre pack de diamants</h4>\n            <p>\n              Après avoir entré votre identifiant, sélectionnez le <b>nombre de diamants</b> que vous souhaitez acheter.\n              Appuyez ensuite sur le bouton <b>“Acheter maintenant”</b> puis \"confirmer cette commande\".\n            </p>\n            <img\n              src=\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tt5e53ed4-5fantf/assets/zttmp2ibwdcd/WhatsApp_Image_2025-11-08_%C3%A0_14.55.20_2c0053ae.jpg\"\n              alt=\"Sélection du pack de diamants\">\n\n            <p style=\"margin-top:15px;\">\n              Une fois la commande passée, vous pouvez suivre son état dans la section <b>Portefeuille Dizi</b>.\n              Le statut <span style=\"color:#22c55e;\">“Livrée”</span> indique que les diamants ont bien été crédités sur\n              votre compte.\n            </p>\n            <img\n              src=\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tt5e53ed4-5fantf/assets/3yo6fm01swuw/WhatsApp_Image_2025-11-08_%C3%A0_14.54.00_04746824.jpg\"\n              alt=\"Détails de la transaction\">\n          </div>\n\n          <!-- Étape 3 -->\n          <div class=\"step\">\n            <h4><i class=\"fa-solid fa-3\"></i> Étape 3 : Vérifiez la livraison</h4>\n            <p>\n              Votre commande sera livrée automatiquement dans votre compte Free Fire après validation du paiement.\n              Vous pouvez consulter l’historique complet de vos transactions dans votre <b>Portefeuille Dizi</b>.\n            </p>\n            <p style=\"color:#38bdf8;\">\n              💡 Astuce : en cas de retard, vérifiez votre identifiant ou contactez le support via WhatsApp avec le\n              numéro\n              de commande.\n            </p>\n          </div>\n\n        </div>\n      </div>\n    </div>\n  </div>\n\n  <div class=\"section\">\n    <div class=\"section-header\">\n      <span><i class=\"fa-solid fa-crosshairs icon-left\"></i> PUBG Mobile</span>\n      <i class=\"fa-solid fa-chevron-right arrow\"></i>\n    </div>\n    <div class=\"section-content\">\n      <div class=\"sub-section open\">\n        <div class=\"sub-header\">\n          <span><i class=\"fa-solid fa-gamepad icon-left\"></i> Comment recharger sur PUBG Mobile</span>\n          <i class=\"fa-solid fa-chevron-right arrow\"></i>\n        </div>\n        <div class=\"sub-content\">\n\n          <!-- Étape 1 -->\n          <div class=\"step\">\n            <h4><i class=\"fa-solid fa-1\"></i> Étape 1 : Trouver votre UID dans PUBG Mobile</h4>\n            <p>\n              Ouvrez le jeu <b>PUBG Mobile</b> sur votre appareil, puis accédez à votre <b>profil</b> en haut à droite\n              de\n              l’écran.\n              Votre <b>UID</b> (identifiant unique du joueur) se trouve directement sous votre pseudo.\n              Notez-le, car il est indispensable pour toute recharge.\n            </p>\n            <img\n              src=\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tt5e53ed4-5fantf/assets/d9gu11j7f7fu/WhatsApp_Image_2025-11-08_%C3%A0_13.36.20_fdfd981e.jpg\"\n              alt=\"Profil PUBG Mobile\">\n            <img\n              src=\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tt5e53ed4-5fantf/assets/ufk0j76i5lk6/WhatsApp_Image_2025-11-08_%C3%A0_13.36.20_be1674e9.jpg\"\n              alt=\"UID du joueur PUBG Mobile\">\n          </div>\n\n          <!-- Étape 2 -->\n          <div class=\"step\">\n            <h4><i class=\"fa-solid fa-2\"></i> Étape 2 : Entrer votre UID et choisir le pack</h4>\n            <p>\n              Rendez-vous sur la page de recharge DiziTopUp et entrez l’<b>UID</b> que vous avez noté à l’étape\n              précédente.\n              Sélectionnez ensuite le <b>pack UC</b> souhaité, puis appuyez sur <b>“Acheter maintenant”</b> et enfin sur\n              <b>“Confirmer cette commande”</b> pour finaliser l’achat.\n            </p>\n            <img\n              src=\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tt5e53ed4-5fantf/assets/kcob6wmnw9e8/Capture_d%C3%A9cran_2025-11-08_151022.png\"\n              alt=\"Entrer UID PUBG sur DiziTopUp\">\n            <img\n              src=\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tt5e53ed4-5fantf/assets/7921kupq5wm3/Capture_d%C3%A9cran_2025-11-08_150726.png\"\n              alt=\"Vérifier UID PUBG sur DiziTopUp\">\n            <img\n              src=\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tt5e53ed4-5fantf/assets/ud1agwx7r4dj/Capture_d%C3%A9cran_2025-11-08_151133.png\"\n              alt=\"Choisir un pack UC PUBG\">\n          </div>\n\n          <!-- Étape 3 -->\n          <div class=\"step\">\n            <h4><i class=\"fa-solid fa-3\"></i> Étape 3 : Vérifiez la livraison</h4>\n            <p>\n              Une fois la commande confirmée, vos UC seront automatiquement livrés dans votre compte PUBG Mobile.\n              Vous pouvez consulter l’état et les détails de votre commande dans la section <b>Portefeuille Dizi</b>.\n            </p>\n            <img\n              src=\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tt5e53ed4-5fantf/assets/4dp3rtw3nit5/WhatsApp_Image_2025-11-08_%C3%A0_15.13.08_11126e30.jpg\"\n              alt=\"Statut de livraison PUBG Mobile\">\n            <p style=\"color:#38bdf8;\">\n              💡 Astuce : en cas de retard, vérifiez votre identifiant ou contactez le support via WhatsApp avec votre\n              numéro de commande.\n            </p>\n          </div>\n\n        </div>\n      </div>\n    </div>\n  </div>\n\n\n  <!-- 🖼️ Popup -->\n  <div class=\"popup\" id=\"imgPopup\">\n    <img src=\"\" alt=\"Zoom Image\">\n  </div>\n\n  <script>\n    // Toggle Sections\n    document.querySelectorAll(\".section-header\").forEach(header => {\n      header.addEventListener(\"click\", () => {\n        header.parentElement.classList.toggle(\"open\");\n      });\n    });\n\n    document.querySelectorAll(\".sub-header\").forEach(sub => {\n      sub.addEventListener(\"click\", () => {\n        sub.parentElement.classList.toggle(\"open\");\n      });\n    });\n\n    // Popup Zoom\n    const popup = document.getElementById(\"imgPopup\");\n    const popupImg = popup.querySelector(\"img\");\n\n    document.querySelectorAll(\".step img\").forEach(img => {\n      img.addEventListener(\"click\", () => {\n        popupImg.src = img.src;\n        popup.classList.add(\"show\");\n      });\n    });\n\n    popup.addEventListener(\"click\", () => {\n      popup.classList.remove(\"show\");\n    });\n  </script>\n</body>\n\n</html>',
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

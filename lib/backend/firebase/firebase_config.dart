import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDSeG5D11dzS1ZOPt3bl9sxwycJDJgjVPI",
            authDomain: "play-dash-xj6zpn.firebaseapp.com",
            projectId: "play-dash-xj6zpn",
            storageBucket: "play-dash-xj6zpn.firebasestorage.app",
            messagingSenderId: "37158494492",
            appId: "1:37158494492:web:4723d9ae2746fe1b689ad9"));
  } else {
    await Firebase.initializeApp();
  }
}

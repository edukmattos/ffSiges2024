import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBDhGaWE_bRpaIJgpNhQyK7dzbNv-Kbsag",
            authDomain: "siges-43828.firebaseapp.com",
            projectId: "siges-43828",
            storageBucket: "siges-43828.appspot.com",
            messagingSenderId: "392150210688",
            appId: "1:392150210688:web:cc5a268735495e2c2b2e65",
            measurementId: "G-0HDD86C33V"));
  } else {
    await Firebase.initializeApp();
  }
}

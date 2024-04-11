import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAQ2qlzVBTO9e_PZ45A7xTB5X_vfDX9OiM",
            authDomain: "fyp24-zd0mud.firebaseapp.com",
            projectId: "fyp24-zd0mud",
            storageBucket: "fyp24-zd0mud.appspot.com",
            messagingSenderId: "101931538207",
            appId: "1:101931538207:web:c8e74f2d935e9242a0422a"));
  } else {
    await Firebase.initializeApp();
  }
}

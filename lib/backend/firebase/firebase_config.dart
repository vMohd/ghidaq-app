import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBkNzNNxzIQAL2_daMcJXNK72327zv0UZs",
            authDomain: "mohd-app-test.firebaseapp.com",
            projectId: "mohd-app-test",
            storageBucket: "mohd-app-test.appspot.com",
            messagingSenderId: "734217112241",
            appId: "1:734217112241:web:73e07ca1e58542d5f9f090"));
  } else {
    await Firebase.initializeApp();
  }
}

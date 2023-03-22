import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDUxkrgT5p56kxPr7mEea6W7TaGkyBlQmI",
            authDomain: "gtoilclub-68b8e.firebaseapp.com",
            projectId: "gtoilclub-68b8e",
            storageBucket: "gtoilclub-68b8e.appspot.com",
            messagingSenderId: "902270002710",
            appId: "1:902270002710:web:90cf091da91a58d0ee3737"));
  } else {
    await Firebase.initializeApp();
  }
}

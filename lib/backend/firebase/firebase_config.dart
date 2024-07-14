import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA3T0XN03kQeUK5fWQ_08zj_XBtBnwbu2Q",
            authDomain: "myntrafwd.firebaseapp.com",
            projectId: "myntrafwd",
            storageBucket: "myntrafwd.appspot.com",
            messagingSenderId: "87679212083",
            appId: "1:87679212083:web:00cf38110b7a688bf0e146",
            measurementId: "G-93JMG983W5"));
  } else {
    await Firebase.initializeApp();
  }
}

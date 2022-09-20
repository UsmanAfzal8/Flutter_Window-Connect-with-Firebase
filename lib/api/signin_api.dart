import 'package:firedart/auth/firebase_auth.dart';

import '../preferences_store.dart';

class SigninAPI {
  //var firebaseAuth = FirebaseAuth.initialize('AIzaSyBY8TOA2eQWIVYmNry-GCpMZ5dTbknzAmo',  PreferencesStore());

  static final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> signin({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.signIn(email, password);
      //await _auth.signInWithEmailAndPassword(email: email, password: password);

      return true;
    } catch (err) {
      return false;
    }
  }
}

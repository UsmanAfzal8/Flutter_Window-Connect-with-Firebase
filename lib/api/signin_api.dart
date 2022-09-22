import 'package:firedart/auth/firebase_auth.dart';

import 'firebaseauth.dart';

class SigninAPI {
  static final FirebaseAuth _firebaseAuthService = FirebaseAuth.instance;
  static String? get uid => _firebaseAuthService.userId;
  Future<bool> signin({
    required String email,
    required String password,
  }) async {
    try {
      print('war giya ');
      await _firebaseAuthService.signIn(email, password);

      print('chal giya 2');
      print(FirebaseAuth.instance);
      print(uid);
      return true;
    } catch (err) {
      return false;
    }
  }
}

import 'package:firedart/firedart.dart';

class FirebaseAuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future signInState() async {
    // !Check Sign In State
    return _firebaseAuth.isSignedIn;
  }

  Future currentUser() async {
    //! Get Current User
    var user = await _firebaseAuth.getUser();
    // String localId = user.id;
    // String? email = user.email;
    return user;
  }

  Future signUp(String email, String pass) async {
    try {
      await _firebaseAuth.signUp(email, pass);
      var user = await _firebaseAuth.getUser();
      return user;
    } catch (e) {
      return e.toString();
    }
  }

  Future signIn(String email, String pass) async {
    try {
      await _firebaseAuth.signIn(email, pass);
      var user = await _firebaseAuth.getUser();
      return user;
    } catch (e) {
      return e.toString();
    }
  }

  Future signOut() async {
    return _firebaseAuth.signOut();
  }
}

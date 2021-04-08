import 'package:firebase_auth/firebase_auth.dart';

class LoginPageController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  static String userId;

  Future<void> signIn(String email, String password) async {
    try {
      print("signIn");
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        userId = _auth.currentUser.uid;
        print(userId);
      });
    } catch (error) {
      throw Future.error(error);
    }
  }

  Future<bool> isUserLogin() async {
    var currentUser = _auth.currentUser;
    if (currentUser == null) {
      print("ログインしていない");
      return false;
    } else {
      print("ログインしている");
      return true;
    }
  }

  Future<void> logOut() async {
    try {
      await _auth.signOut();
    } catch (error) {
      throw Future.error(error);
    }
  }
}

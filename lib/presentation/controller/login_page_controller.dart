import 'package:firebase_auth/firebase_auth.dart';

class LoginPageController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signIn(String email, String password) async {
    try {
      print("signIn");
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (error) {
      Future.error(error);
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
    await _auth
        .signOut()
        .then((value) => print("ログアウト"))
        .catchError((error) => print(error));
  }
}

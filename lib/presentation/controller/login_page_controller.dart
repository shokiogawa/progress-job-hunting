import 'package:firebase_auth/firebase_auth.dart';

class LoginPageController{
final FirebaseAuth _auth = FirebaseAuth.instance;

Future<void> signIn(String email, String password)async{
  try{
    print("signIn");
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }catch(error){
    Future.error(error);
  }
}
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
class AuthViewModel extends GetxController{
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ["email"]);
  FirebaseAuth _auth = FirebaseAuth.instance;
  late  String email,password, name;
  void googleSignInMethod ()async{

  final GoogleSignInAccount? googleUser =  await _googleSignIn.signIn();
  GoogleSignInAuthentication googleSignInAuthentication= await googleUser!.authentication;
 final  AuthCredential credential=  GoogleAuthProvider.credential(
    idToken: googleSignInAuthentication.idToken,
    accessToken:googleSignInAuthentication.accessToken ,
  );
final UserCredential userCredential =  await _auth.signInWithCredential(credential);
print(userCredential);

  }


}
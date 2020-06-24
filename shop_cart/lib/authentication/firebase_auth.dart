import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseAuthentication{

FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  sigIn(String email, String password )async{
   var user = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
   return user;
  }


register(String email, String password)async{
var user = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
return user;
}


}
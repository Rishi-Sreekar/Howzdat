import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterapp12/UserData.dart';
import 'package:flutterapp12/profile.dart';
import 'user.dart';

class Authenticate {
  final FirebaseAuth _auth=FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }
  //#7 4:30
  Stream<User>get user{
    return _auth.onAuthStateChanged
        .map(_userFromFirebaseUser);
  }
  // sign in with email and password
  Future signIn (String email,String password) async{
    try{
      AuthResult result=await _auth.signInWithEmailAndPassword (email: email, password: password);
      FirebaseUser user=result.user;
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }
  //SignUp with email and password
  Future signUp (String email,String password,String username,String firstName,String lastName) async{
    try{
      AuthResult result=await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user =result.user;
      await UserData(uid: user.uid,).addUserInfo(username, firstName, lastName);
      return _userFromFirebaseUser(user);
    } catch(e){
      print(e.toString());
      return null;
    }
  }
  //signOut
  Future signOut()async{
    try{
      return await _auth.signOut();
    }catch(e){
     return null;
    }
  }
  //
}


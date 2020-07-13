import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutterapp12/user.dart';

class UserData{

  final String uid;
  UserData({this.uid});
  final CollectionReference _userdata=Firestore.instance.collection('usersInfo');

  Future addUserInfo(String userName,String firstName,String lastName)async{
    return await _userdata.document(uid).setData({
       'userName':userName,
       'firstName':firstName,
       'lastName':lastName,
    });
  }

  UsersData _usersDataFromSnapshot(DocumentSnapshot snapshot){
    return UsersData(
      uid: uid,
      name: snapshot.data['firstName'] + ' '+snapshot.data['lastName'],
      username: snapshot.data['userName']
    );
  }

  Stream<UsersData> get usersdata{
    return _userdata.document(uid).snapshots()
        .map(_usersDataFromSnapshot);
  }
}
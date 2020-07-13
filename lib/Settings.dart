import 'package:flutter/material.dart';
import 'Auth.dart';
class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final Authenticate _auth =Authenticate();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            ListTile(title: Text('Edit presonal Information')),
            ListTile(title: Text('Colour Theme')),
            ListTile(title: Text('Feedback'),
              onTap: ()async{
              dynamic result=await _auth.signOut();
              Navigator.pop(context);
              },),
          ],
        ),
      ),
    );
  }
}

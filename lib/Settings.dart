import 'package:flutter/material.dart';
class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            ListTile(title: Text('Edit presonal Information')),
            ListTile(title: Text('Colour Theme')),
            ListTile(title: Text('Feedback')),
          ],
        ),
      ),
    );
  }
}

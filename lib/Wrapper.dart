import 'package:flutter/material.dart';
import 'package:flutterapp12/first_page.dart';
import 'package:flutterapp12/homepage.dart';
import 'package:provider/provider.dart';
import 'user.dart';
class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);


    if (user == null) {
      return FirstPage();
    }else{
      return HomePage();
    }
  }
}

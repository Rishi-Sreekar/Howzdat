import 'package:flutter/material.dart';
import 'package:flutterapp12/Search.dart';
import 'package:flutterapp12/Settings.dart';
import 'package:flutterapp12/friends_list_page.dart';
import 'package:flutterapp12/homepage.dart';
import 'package:flutterapp12/main.dart';
import 'package:flutterapp12/profile.dart';
import 'package:flutterapp12/searchPage.dart';
import 'tabs.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        width: Values.width,
        height: (Values.maxWidth1)*2.8,

        child: Material(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          elevation: 20.0,
          shadowColor: Colors.black,
          child: SafeArea(
            child: Stack(
              children: <Widget>[
                ListView(
//                            padding: EdgeInsets.zero,
                  children:  <Widget>[
                    ListTile(
                      leading: Icon(MdiIcons.homeOutline,color: Colors.black,),
                      title: Values.clicked?Text('Home',style: TextStyle(fontSize:20),):null,
                      onTap: (){setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

                      });} ,
                    ),
                    ListTile(
                      leading: Icon(Icons.category,color: Colors.black,),
                      title: Values.clicked?Text('Categories',style: TextStyle(fontSize:20),):null,
                      onTap: (){setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));

                      });} ,
                    ),
                    ListTile(
                      leading: Icon(MdiIcons.accountCircleOutline,color: Colors.black,),
                      title: Values.clicked?Text('Profile',style: TextStyle(fontSize:20),):null,
                      onTap: (){setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));

                      });} ,
                    ),
                    ListTile(
                      leading: Icon(Icons.group,color: Colors.black,),
                      title: Values.clicked?Text('Friends',style: TextStyle(fontSize:20),):null,
                      onTap: (){setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FrndList(category: '<insert category>',)));

                      });} ,
                    ),
                    ListTile(
                      leading: Icon(Icons.search,color: Colors.black,),
                      title: Values.clicked?Text('Search',style: TextStyle(fontSize:20),):null,
                      onTap: (){setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPeople() ));

                      });} ,
                    ),
                    ListTile(
                      leading: Icon(Icons.settings,color: Colors.black,),
                      title: Values.clicked?Text('Settings',style: TextStyle(fontSize:20),):null,
                      onTap: (){setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));

                      });} ,
                    ),
                    ListTile(
                      leading: Icon(Icons.watch_later,color: Colors.black,),
                      title: Values.clicked?Text('Search',style: TextStyle(fontSize:20),):null,
                      onTap: (){setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPeople() ));

                      });} ,
                    ),
                    SizedBox(
                      height: 100,
                    ),

                  ],
                ),
                Align(
                  alignment: Alignment(0,0.97),
                  child: IconButton(
                    onPressed: (){
                      setState(() {
                        Values.clicked=!Values.clicked;
                        Values.clicked ? Values.width=Values.maxWidth:Values.width=Values.minWidth;
                      });
                    },

                    icon: Values.clicked?Icon(Icons.keyboard_arrow_left,color: Colors.black,):Icon(Icons.keyboard_arrow_right,color: Colors.black,),
                  ),
                )
              ],
            ),

          ),
        ),
      ),
    );
  }
}

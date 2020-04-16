import 'package:flutter/material.dart';
import 'package:flutterapp12/Signup_page.dart';
import 'package:flutterapp12/category_page.dart';
import 'package:flutterapp12/friends_list_page.dart';
import 'package:flutterapp12/item_page.dart';
import 'package:flutterapp12/first_page.dart';
import 'package:flutterapp12/tabs.dart';
import 'package:flutter/services.dart';
import 'Signin_page.dart';

//import 'package:flutterapp12/tab_Template.dart';
void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.redAccent, // status bar color
  ));
  runApp( MaterialApp(
    home: FrndList()/**/,
  ));
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 Values values;
  @override
  Widget build(BuildContext context) {

    return
      Scaffold(
      backgroundColor: Colors.white,
        body:SafeArea(
          child: Stack(
            children: [
              Container(
                height:( MediaQuery.of(context).size.height)*0.4,
                color: Colors.redAccent,
              ),
              DraggableScrollableSheet(
                initialChildSize: 0.8,
                builder: (context,scrollController) {
                  return SafeArea(child:SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: CategoryPage(),
                  ),
                  );
                },
              ),
             Values.state1?
             Align(
               alignment: Alignment.centerRight,
               child: AnimatedContainer(
                 duration: Duration(milliseconds: 250),
                 width: Values.width1,
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
                           padding: EdgeInsets.zero,
                           children:  <Widget>[
                             ListTile(
                               contentPadding: EdgeInsets.all(12.5),
                               leading: Icon(Icons.account_circle,color: Colors.black,size: 30.0,),
                               title: Values.clicked1?Text('Rishi sreekar',style: TextStyle(fontSize:14.5),):null,
                               trailing: Values.clicked1? Icon(Icons.thumb_up,color: Colors.green[900],size: 25.0,):null,
                               onTap: (){},
                             ),
                             ListTile(
                               contentPadding: EdgeInsets.all(12.5),
                               leading: Icon(Icons.account_circle,color: Colors.black,size: 30.0,),
                               title: Values.clicked1?Text('Settings',style: TextStyle(fontSize: 14.5),):null,
                               trailing: Values.clicked1? Icon(Icons.thumb_up,color: Colors.green[900],size: 25.0,):null,
                               onTap: (){},
                             )
                           ],
                         ),
                         Align(
                           alignment: Alignment(0,0.97),
                           child: IconButton(
                             onPressed: (){
                               setState(() {
                                 Values.clicked1=!Values.clicked1;
                                 Values.clicked1 ? Values.width1=Values.maxWidth1:Values.width1=Values.minWidth1;
                               });
                             },

                             icon: Icon(Icons.keyboard_arrow_left,color: Colors.black,),
                           ),
                         )
                       ],
                     ),
                   ),
                 ),
               ),
             )
                 : Container(),
              Values.state?
              Align(
                alignment: Alignment.centerLeft,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
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
                            padding: EdgeInsets.zero,
                            children:  <Widget>[
                              ListTile(
                                leading: Icon(Icons.message,color: Colors.black,),
//                  title: Text('Messages'),
                              ),
                              ListTile(
                                leading: Icon(Icons.account_circle),
//                  title: Text('Profile'),
                              ),
                              ListTile(
                                leading: Icon(Icons.settings),
//                  title: Text('Settings'),
                              ),
                              SizedBox(
                                height: 500,
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

                             icon:  Icon(Icons.keyboard_arrow_right,color: Colors.black,),
                            ),
                          )
                        ],
                      ),

                    ),
                  ),
                ),
              ):
                  Container(),
              Align(
                alignment: Alignment(0.96,0.97),
                child: IconButton(
                  onPressed: (){
                    setState(() {
                      Values.state1=!Values.state1;
                    });
                  },
                  icon: Icon(Icons.menu,color: Colors.black,),
                  iconSize: 20.0,

                ),
              ),
              Align(
                alignment: Alignment(-0.96,0.97),
                child: IconButton(
                  onPressed: (){
                    setState(() {
                      Values.state=!Values.state;
                    });

                  },
                  icon: Icon(Icons.menu,color: Colors.black,),
                  iconSize: 20.0,
                ),
              ),

            ]
          ),
        ),

      floatingActionButton: Row(
        children: <Widget>[
          SizedBox(width: 20.0),

          SizedBox(width: 279.4),

        ],
      ),
      ) ;

  }
}
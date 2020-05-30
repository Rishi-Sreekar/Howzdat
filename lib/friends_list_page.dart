import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp12/flpi.dart';
import 'package:flutterapp12/navigation.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
//import 'item.dart';
import 'tabs.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
 class FrndList extends StatefulWidget {
   @override
   _FrndListState createState() => _FrndListState();
 }

 class _FrndListState extends State<FrndList> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
         backgroundColor: Colors.white ,
         body: SafeArea(
           child: Stack(

             children:[
               SingleChildScrollView(
                 scrollDirection: Axis.vertical,
                 child: Stack(

                   children: <Widget>[
                     ClipRRect(
                       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
                       child: Material(
                         elevation: 0.0,
                         child: Container(
                           height:( MediaQuery.of(context).size.height)*0.303,
                           color: Colors.indigo[700],

                         ),
                       ),
                     ),

                     Align(
                       alignment: Alignment.center,
                       child: Column(
                         children: <Widget>[
                           SizedBox(
                             height:10  ,
                           ),
                           Material(
                             elevation: 20,
                             shadowColor: Colors.grey[600],
                             borderRadius: BorderRadius.circular(100),
                             child: CircleAvatar(
                               backgroundImage: AssetImage('assets/batman.jpg'),
                               radius: 100,
                             ),
                           ),
                           SizedBox(width: 5,),
                           Text('Category',style: TextStyle(fontSize: 33,color: Colors.white,fontFamily: 'Headland_one',fontWeight: FontWeight.w400),),
                           Divider(color: Colors.grey[900],thickness: .3,),
                           SizedBox(
                             height: 50,
                             child: ListTile(
                               title: Text('Your group:',style: TextStyle(fontSize: 18,color: Colors.grey[900]),),
                               trailing: Wrap(children: <Widget>[
                                 IconButton(
                                   //add functionality
                                   onPressed: (){},
                                   icon: Icon(Icons.add),
                                   color: Colors.black,
                                   iconSize: 20,
                                 ),
                                 IconButton(
                                   //add functionality
                                   onPressed: (){},
                                   icon: Icon(MdiIcons.deleteOutline),
                                   color: Colors.black,
                                   iconSize: 20,
                                 ),
                               ],),
                             ),
                           ),
                           Divider(color: Colors.grey[900],thickness: .3,),
                           SizedBox(
                             height: 15,
                           ),
                           //iterate through all friends
                           Flpi(),
                           SizedBox(
                             height: 8,
                           ),
                           Flpi(),
                           SizedBox(
                             height: 8,
                           ),
                           Flpi(),
                           SizedBox(
                             height: 8,
                           ),
                           Flpi(),
                           SizedBox(
                             height: 8,
                           ),
                           Flpi(),
                           SizedBox(
                             height: 8,
                           ),
                           Flpi(),
                           SizedBox(
                             height: 8,
                           ),
                           Flpi(),
                           SizedBox(
                             height: 8,
                           ),
                           Flpi(),
                           SizedBox(
                             height: 8,
                           ),
                           Flpi(),
                           SizedBox(
                             height: 8,
                           ),

                         ],
                       ),
                     ),
                   ],
                 ) ,
               ), Values.state?
               NavBar():
               Container(),

               Align(
                 alignment: Alignment(-0.96,0.97),
                 child: FloatingActionButton(
                     onPressed: (){
                       setState(() {
                         Values.state=!Values.state;
                       });
                     },
                     child: Icon(Icons.menu,color: Colors.black,size: 20.0,),
                     elevation: 20,
                     splashColor: Colors.white,
                     backgroundColor: Colors.white,

                 ),
               ),


             ],),  )

     );
   }
 }



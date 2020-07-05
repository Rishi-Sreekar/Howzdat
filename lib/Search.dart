import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tabs.dart';
import 'package:flutterapp12/navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPeople extends StatefulWidget {
  @override
  _SearchPeopleState createState() => _SearchPeopleState();
}

class _SearchPeopleState extends State<SearchPeople> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
           body:Stack(
             children: <Widget>[
               Material(
                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(55),bottomRight: Radius.circular(55)),
                 elevation: 3.0,
                 shadowColor: Colors.white,

                 child: ClipRRect(
                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(55),bottomRight: Radius.circular(55)),
                   child: Container(
                     height:( MediaQuery.of(context).size.height)*0.125,
                     color: Colors.redAccent,
                   ),
                 ),
               ),
               Align(
                    alignment: Alignment(0,-.933),
                    child: Container(
                      padding: EdgeInsets.zero,
                      height: 45,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey[400]),left:BorderSide(color: Colors.grey[400]),right: BorderSide(color: Colors.grey[400]),top: BorderSide(color: Colors.grey[400]) ),),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5,0, 0, 0),
                          child: TextField(

                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                border: InputBorder.none,
                                hintText:"Add friends...",
                                hintStyle: TextStyle(color: Colors.grey[400])
                            ),
                            maxLines: 1,
                            maxLengthEnforced: false,

                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(.93,-.933),
                    child: IconButton(
                      onPressed: (){},
                      icon: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Icon(Icons.search,color: Colors.black,),
                      ),),
                  ),
               Align(
                   alignment: Alignment(-.95,-.72),
                   child: Text("Add friends:",style:GoogleFonts.sourceSansPro(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.redAccent),)),
               //convert into list
               Align(
                 alignment: Alignment(0,-.55),
                 child: Material(
                   borderRadius: BorderRadius.all(Radius.circular(20.0)),
                   color: Colors.white  ,
                   elevation: 3,
                   shadowColor: Colors.black,
                   child: ClipRRect(
                     borderRadius: BorderRadius.all(Radius.circular(20.0)),

                     child: Container(
                         width: 400,
                         height: 175,
                         child:Row(
                           children: <Widget>[
                             Container(
                               padding: EdgeInsets.all(0),
                               child: Image (
                                 height: 225,
                                 width: 150,
                                 image: AssetImage('assets/rishi.jpg'),
                                 fit: BoxFit.contain,

                               ),
                             ),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: <Widget>[
                                 SizedBox(height: 15),

                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: <Widget>[
                                     Text("Rishi Sreekar",style:GoogleFonts.sourceSansPro(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.redAccent),)
                                   ],
                                 ),
                                 SizedBox(height: 15),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: <Widget>[
                                     Text("rishi7",style:GoogleFonts.montserrat(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.redAccent),)
                                   ],
                                 ),

                                 SizedBox(height: 15,),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   crossAxisAlignment: CrossAxisAlignment.center,

                                   children: <Widget>[
                                     SizedBox(width: 5),
                                     RaisedButton(
                                       color: Colors.redAccent,
                                       child: Text("accept",style:GoogleFonts.montserrat(fontSize: 19,fontWeight: FontWeight.w400,color: Colors.white),),
                                       onPressed: (){
                                         setState(() {
                                         });
                                       }
                                       ,),
                                     SizedBox(width: 8,),
                                     RaisedButton(
                                       color: Colors.redAccent,
                                       child: Text("decline",style:GoogleFonts.montserrat(fontSize: 19,fontWeight: FontWeight.w400,color: Colors.white),),
                                       onPressed: (){
                                         setState(() {
                                         });
                                       }
                                       ,),
                                   ],
                                 )
                               ],
                             ),
                           ],
                         )

                     ),
                   ),
                 ),
               ),
               Values.state?
               NavBar():Container(),

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

             ],
           ),
      ),
    );
  }
}

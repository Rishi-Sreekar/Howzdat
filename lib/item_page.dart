import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp12/list.dart';
import 'package:flutterapp12/navigation.dart';
import 'package:flutterapp12/rateList.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'tabs.dart';
import 'item.dart';
class ItemPage extends StatefulWidget {
  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
    @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(

           child:  Stack(
                children: [
                  SingleChildScrollView(
                    child: Stack(
                      children: <Widget>[

                        ClipPath(
                          clipper: MyClipper(),
                          child: Material(
                            elevation: 10.0,
                            child: Container(
                              height:( MediaQuery.of(context).size.height)*0.45,
                              color: Colors.red[700],

                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                                alignment: Alignment(0,-.82),
                                child: Item()),
                            SizedBox(height: 10,),
                            !Values.rate?
                            SizedBox(
                 width: MediaQuery.of(context).size.width-15,
                 child: Material(
                   elevation: 20.0,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
                   shadowColor: Colors.grey[800],
                   child: Padding(
                     padding: const EdgeInsets.fromLTRB(5,20,5,10),
                     child: Column(
                       children: <Widget>[
                         lisp(cat: 'story:',per: 60,perDe: 0.6,), lisp(cat: 'cinematography:',per: 30,perDe: 0.3,), lisp(cat: 'direction',per: 90,perDe: 0.7,),SizedBox(height: 30,), lisp(cat: 'overall experience',per: 80,perDe: 0.8,)
                       ],
                     ),
                   ),
                 ),
               ):Container(),
                            SizedBox(height:8 ),
                            Values.rate1?
                            SizedBox(
                              width: MediaQuery.of(context).size.width-15,
                              child: Material(
                                elevation: 10.0,
                                shadowColor: Colors.grey[800],
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: <Widget>[
                                     /* Text('Rate:',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.black),),
                                      SizedBox(height: 20),*/


                                      SizedBox(height: 10,),
                                      FlatButton(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                        onPressed: (){
                                          setState(() {
                                            Values.rate=!Values.rate;
                                            });
                                        },
                                        child: Text('Rate',style: TextStyle(fontSize: 25),),
                                        color: Colors.blueAccent[400],
                                        textColor: Colors.white,


                                      ),
                                      Values.rate?
                                       Column(
                                         children: <Widget>[
                                           Rtlt(cat: 'Story:'),
                                           Rtlt(cat: 'Cinematography:'),
                                           Rtlt(cat: 'Direction:'),
                                           SizedBox(height: 20,),
                                           Rtlt(cat: 'Overall Experience:'),
                                           FlatButton(
                                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                             onPressed: (){
                                               setState(() {
                                                 Values.rate=!Values.rate;
                                                 Values.rate1=!Values.rate1;
                                                 //add more lines to submit the values
                                               });
                                             },
                                             child: Text('Submit',style: TextStyle(fontSize: 25),),
                                             color: Colors.black87,
                                             textColor: Colors.white,


                                           ),

                                         ],
                                       ):Container(),

                                    ],
                                  ),
                                ),
                              ),
                            ):Container(),
                            SizedBox(height:10)
                          ],
                        ),
                      ],
                    ),
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
                                  //add a loop to iterate through friends list
                                  ListTile(
                                    contentPadding: EdgeInsets.fromLTRB(10,5,5,3),
                                    leading: Icon(MdiIcons.accountCircleOutline,color: Colors.black,size: 30.0,),
                                    title: Values.clicked1?Text('Rishi123',style: TextStyle(fontSize:16.5),):null,
                                    trailing: Values.clicked1? Text('90%',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.lightGreenAccent[700]),):null,
                                    onTap: (){},
                                  ),
                                  ListTile(
                                    contentPadding: EdgeInsets.fromLTRB(10,5,5,3),
                                    leading:  CircleAvatar(
                                      backgroundImage: AssetImage('assets/batman.jpg'),
                                      radius: 18,
                                    ),
                                    title: Values.clicked1?Text('Alfred',style: TextStyle(fontSize: 14.5),):null,
                                    trailing: Values.clicked1? Text('80%',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.lightGreenAccent[700]),):null,
                                    onTap: (){},
                                  ),
                                  ListTile(
                                    contentPadding: EdgeInsets.fromLTRB(10,5,5,3),
                                    leading:  CircleAvatar(
                                      backgroundImage: AssetImage('assets/batman.jpg'),
                                      radius: 18,
                                    ),
                                    title: Values.clicked1?Text('Joker',style: TextStyle(fontSize: 14.5),):null,
                                    trailing: Values.clicked1? Text('30%',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),):null,
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
                  NavBar():Container(),
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


    ) ;

  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path =Path();
    Offset  CoSoP=Offset(0,size.height*0.95);
    Offset  CoEoP=Offset(size.width,size.height*0.95);
    path.lineTo(CoSoP.dx, CoSoP.dy);
    path.quadraticBezierTo(size.width*0.5, size.height*.7, CoEoP.dx, CoEoP.dy);
//    path.cubicTo(size.width, size.height, size.width*.3, size.height*.3, size.width*.5, size.height*.5);
    path.lineTo(size.width, 0);
    return  path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}
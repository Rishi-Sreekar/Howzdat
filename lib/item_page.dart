import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
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
                              color: Colors.redAccent,

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
               SizedBox(
                 width: MediaQuery.of(context).size.width-15,
                 child: Material(
                   elevation: 20.0,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
                   shadowColor: Colors.redAccent,
                   child: Padding(
                     padding: const EdgeInsets.fromLTRB(5,20,5,10),
                     child: Column(

                       children: <Widget>[

                         Row(

                           children: <Widget>[
                             SizedBox(width:15),
                             Container(
//                                   color:Colors.white,
                               padding: EdgeInsets.zero,

                               decoration: BoxDecoration(
                                   color: Colors.white,
                                   shape: BoxShape.circle,
                                   boxShadow: [BoxShadow(
                                     offset: const Offset(1.0, 5.0),
                                     blurRadius: 5.0,
                                     spreadRadius: 2.0,
                                     color: Colors.black45,
                                   ),]
                               ),

                               child: Padding(
                                 padding: const EdgeInsets.all(0.0),
                                 child: CircularPercentIndicator(
                                   radius: 150.0,
                                   lineWidth: 20.0,
                                   animation: true,
                                   percent: 0.8,

                                   center: new Text(
                                     "80.0%",
                                     style:
                                     new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, ),
                                   ),
//                                       footer: new
                                   circularStrokeCap: CircularStrokeCap.round,
                                   backgroundColor: Colors.red,
                                   progressColor: Colors.lightGreenAccent[700],
                                 ),
                               ),
                             ),
                             SizedBox(width:60.5),

                             Container(
//                                   color:Colors.white,
                               padding: EdgeInsets.zero,

                               decoration: BoxDecoration(

                                   color: Colors.white,
                                   shape: BoxShape.circle,
                                   boxShadow: [BoxShadow(
                                     offset: const Offset(1.0, 5.0),
                                     blurRadius: 5.0,
                                     spreadRadius: 2.0,
                                     color: Colors.black45,
                                   ),]
                               ),

                               child: Padding(
                                 padding: const EdgeInsets.all(0.0),
                                 child: CircularPercentIndicator(
                                   radius: 150.0,
                                   lineWidth: 20.0,
                                   animation: true,
                                   percent: 0.8,

                                   center: new Text(
                                     "80.0%",
                                     style:
                                     new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, ),
                                   ),
//                                       footer: new
                                   circularStrokeCap: CircularStrokeCap.round,
                                   backgroundColor: Colors.red,
                                   progressColor: Colors.lightGreenAccent[700],
                                 ),
                               ),
                             ),
                             SizedBox(height:10.5),
                                                      ],
                         ),
                         Row(
                           children: <Widget>[
                             SizedBox(width: 35),
                             Text("Overall\nrating",style:TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
                             SizedBox(width:125),
                             Text("Overall\nrating",style:TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
                           ],
                         ),
                         SizedBox(height: 20),

                       ],
                     ),
                   ),
                 ),
               ),
                            SizedBox(height:8 ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width-15,
                              child: Material(
                                elevation: 10.0,
                                shadowColor: Colors.redAccent,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: <Widget>[
                                      Text('Rate:',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.black),),
                                      SizedBox(height: 20),

                                      Wrap(
                                          direction: Axis.horizontal,
                                          children:[
                                            FlatButton(
                                              onPressed: (){},
                                              color: Colors.white,
                                              shape: CircleBorder(),

                                              child: Material(
                                                elevation: 8,
                                                shape: CircleBorder(),
                                                shadowColor: Colors.lightGreenAccent[700],
                                                child: Padding(
                                                  padding: const EdgeInsets.all(10.0),
                                                  child: Icon(
                                                    MdiIcons.thumbUp,
                                                    color: Colors.lightGreenAccent[700],
                                                    size: 60.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            FlatButton(
                                              onPressed: (){
                                                print("print");
                                              },
                                              color: Colors.white,
                                              shape: CircleBorder(),

                                              child: Material(
                                                elevation: 8,
                                                shape: CircleBorder(),
                                                shadowColor: Colors.blueAccent[400],
                                                child: Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: Icon(
                                                    Icons.do_not_disturb_on,
                                                    color: Colors.blueAccent[400],
                                                    size: 70.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            FlatButton(
                                              onPressed: (){},
                                              shape: CircleBorder(),
                                              color: Colors.white,
                                              child: Material(
                                                elevation: 8,
                                                shape: CircleBorder(),
                                                shadowColor: Colors.redAccent[400],
                                                child: Padding(
                                                  padding: const EdgeInsets.all(08.0),
                                                  child: Icon(
                                                    MdiIcons.thumbDownOutline,
                                                    color: Colors.redAccent[400],
                                                    size: 60.0,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ]
                                      ),
                                      SizedBox(height: 10,),
                                      FlatButton(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                        onPressed: (){},
                                        child: Text('Haven\'t watched'),
                                        color: Colors.blueAccent[400],
                                        textColor: Colors.white,


                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
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

                                  icon:  AnimatedIcon(
                                      icon: AnimatedIcons.menu_arrow,
//                                      progress: Clip.antiAlias,
                                      semanticLabel: 'Show menu',
                                    )                                ),
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
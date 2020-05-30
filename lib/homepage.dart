import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapp12/item_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'tabs.dart';
import 'navigation.dart';
import 'category_page.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 static List loopString=[1,2,3,4];
 var ls=loopString;
 var i=0;
 @override
  Widget build(BuildContext context) {
    return SafeArea(

      child:Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: Stack(

          children: <Widget>[
        ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(55),bottomRight: Radius.circular(55)),
            child: Container(
              height:( MediaQuery.of(context).size.height)*0.26,
              color: Colors.red[700],
            ),
          ),
            Align(
              alignment: Alignment(0,.358),
              child: ClipRRect(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(55),),

                child: Container(
                height:30,

//                color: Colors.red[700],
              ),
          ),
            ),
            Align(
              alignment: Alignment(0,-.36),
              child: ClipPath(
                child: Container(
                  height:30.5,
//                  color: Colors.red[700],
                ),
              ),
            ),
            Align(
              alignment: Alignment(0,-.783),
              child: Container(
                padding: EdgeInsets.zero,
                height: 50,
                width: 300,
                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black),left:BorderSide(color: Colors.black),right: BorderSide(color: Colors.black),top: BorderSide(color: Colors.black) ),),
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
              alignment: Alignment(.93,-.783),
              child: IconButton(
                onPressed: (){},
                icon: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Icon(Icons.search,color: Colors.black,),
                ),),
            ),
            Align(
              alignment: Alignment(-.93,-0.365),
                child: Text('Suggestions:',style: TextStyle(fontSize: 25,color: Colors.black),)),
            Align(
                alignment: Alignment(-.93,-0.31),
                child: Divider(thickness: 1,)),
            Align(
                alignment: Alignment(-.93,0.0),
                child: Text('No suggestions',style: TextStyle(fontSize: 25,color: Colors.grey[350]),)),
            Align(
                alignment: Alignment(-.93,0.31),
                child: Divider(thickness: 1,)),
            Stack(
              children:loopString.reversed.map((ls)=>
                 Align(
                   alignment: Alignment.center,
                   child: Dismissible(
                     child: InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemPage()));
                         loopString.remove(loopString[i]);

                       },
                       child: ClipRRect(
                         borderRadius: BorderRadius.all(Radius.circular(20.0)),
                         child: Material(
                           borderRadius: BorderRadius.all(Radius.circular(20.0)),
                           elevation: 5.0,
                           color: Colors.red[700],
                           child: Container(
                             width: 400,
                             height: 225,
                             child:Column(
                               children: <Widget>[
                                 SizedBox(height: 15),
                                 Row(children: <Widget>[SizedBox(width:20.0),
                                   Text('Rishi suggested:',style: TextStyle(fontSize: 25,color: Colors.white),),
                                   SizedBox(width:120.0),
                                 IconButton(
                                   icon: Icon(Icons.favorite_border,size: 25  ,color: Colors.white),
                                 onPressed: (){
                                     setState(() {
                                       });
                                 }
                                 ,)
                                 ],),
                                 SizedBox(height: 35),
                                 Row(children: <Widget>[
                                   SizedBox(width:10.0),
                                   Wrap(
                                   direction: Axis.horizontal,
                                   children: <Widget>[
                                     Container(
                                       padding: EdgeInsets.all(0),
                                       child: CircleAvatar (
                                         backgroundImage: AssetImage('assets/batman.jpg'),
                                         radius: 50,

                                       ),
                                     ),
                                     SizedBox(width:10.0),
                                     Column(
                                       //add a loop to iterate through group's participants
                                       children: <Widget>[
                                         SizedBox(height:25.0,),
                                         Text("The Dark Knight Rises",style:TextStyle(fontSize: 25,fontFamily: 'Roboto',color: Colors.white,fontWeight: FontWeight.w500,),),
                                       ],
                                     )
                                   ],
                                 ),],),
                               ],
                             )

                           ),
                         ),
                       ),
                     ),
                     key: ValueKey(i),
                     onDismissed: (direction){
                       setState(() {
                         print(i);
//                       print(loopString[i]);
                         loopString.remove(loopString[i]);
                       print(ls);

                       });
                     },
                   ),

                 )

            ).toList(),
            ),
            Align(
                alignment: Alignment(-.93,0.355),
                child: Text('Requests:',style: TextStyle(fontSize: 25,color: Colors.black),)),
            Align(
                alignment: Alignment(-.93,0.39),
                child: Divider(thickness: 1,)),
            Align(
                alignment: Alignment(-.93,0.70),
                child: Text('No requests',style: TextStyle(fontSize: 25,color: Colors.grey[350]),)),
            Align(
                alignment: Alignment(-.93,0.98),
                child: Divider(thickness: 1,)),

            Stack(
              children:loopString.reversed.map((ls)=>
                  Align(
                    alignment: Alignment(0,.93),
                    child: Dismissible(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemPage()));
                          loopString.remove(loopString[i]);

                        },
                        child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Colors.red[700],
                          elevation: 5.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            child: Container(
                                width: 400,
                                height: 225,
                                child:Column(
                                  children: <Widget>[
                                    SizedBox(height: 15),
                                    Row(children: <Widget>[SizedBox(width:20.0),
                                      Text('Rishi requested:',style: TextStyle(fontSize: 25,color: Colors.white),),
                                      SizedBox(width:100.0),
                                      IconButton(
                                        icon: Icon(Icons.watch_later,size: 25  ,color: Colors.white,),
                                        onPressed: (){
                                          setState(() {
                                          });
                                        }
                                        ,),
                                      IconButton(
                                        icon: Icon(Icons.forward,size: 25  ,color: Colors.white,),
                                        onPressed: (){
                                          setState(() {
                                          });
                                        }
                                        ,)
                                    ],),
                                    SizedBox(height: 35),
                                    Row(children: <Widget>[
                                      SizedBox(width:10.0),
                                      Wrap(
                                        direction: Axis.horizontal,
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.all(0),
                                            child: CircleAvatar (
                                              backgroundImage: AssetImage('assets/batman.jpg'),
                                              radius: 50,

                                            ),
                                          ),
                                          SizedBox(width:10.0),
                                          Column(
                                            //add a loop to iterate through group's participants
                                            children: <Widget>[
                                              SizedBox(height:25.0,),
                                              Text("The Dark Knight Rises",style:TextStyle(fontSize: 25,fontFamily: 'Roboto',fontWeight: FontWeight.w700,color: Colors.white),),
                                            ],
                                          )
                                        ],
                                      ),],),
                                  ],
                                )

                            ),
                          ),
                        ),
                      ),
                      key: ValueKey(i),
                      onDismissed: (direction){
                        setState(() {
                          print(i);
//                       print(loopString[i]);
                          loopString.remove(loopString[i]);
                          print(ls);

                        });
                      },
                    ),

                  )

              ).toList(),
            ),
            Values.state?
            NavBar():Container(),
            Align(
              alignment: Alignment(-0.96,0.97),
              child: FloatingActionButton (
                onPressed: (){
                  setState(() {
                    Values.state=!Values.state;
                  });

                },
                child: Icon(Icons.menu,color: Colors.white,),
                //change with color of choice
                backgroundColor: Colors.red[700],
              ),
            ),

          ],
        ),

      ),

          );
  }
}


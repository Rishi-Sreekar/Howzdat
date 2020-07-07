import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapp12/Settings.dart';
import 'package:google_fonts/google_fonts.dart';
class HmPgTile extends StatefulWidget {
  String name,img;
  HmPgTile({this.name,this.img});
  @override
  _HmPgTileState createState() => _HmPgTileState(name: this.name,img: this.img);
}

class _HmPgTileState extends State<HmPgTile> {
  String name,img;
  _HmPgTileState({this.name,this.img});
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      borderOnForeground: true,
      color: Colors.white  ,
      elevation: 7,
      shadowColor: Colors.white,
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
                    image: AssetImage(img),
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
                        Text(name,style:GoogleFonts.sourceSansPro(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.redAccent),)
                      ],
                    ),
                    SizedBox(height: 15),

                    Row(children: <Widget>[
                      SizedBox(width: 5,),
                      Container(
                        padding: EdgeInsets.all(0),
                        child: CircleAvatar (
                          backgroundImage: AssetImage('assets/batman.jpg'),
                          radius: 20,
                        ),
                      ),
                      SizedBox(width: 3,),
                      Container(
                        padding: EdgeInsets.all(0),
                        child: CircleAvatar (
                          backgroundImage: AssetImage('assets/batman.jpg'),
                          radius: 20,
                        ),
                      ),
                      SizedBox(width: 3,),
                      Container(
                        padding: EdgeInsets.all(0),
                        child: CircleAvatar (
                          backgroundImage: AssetImage('assets/batman.jpg'),
                          radius: 20,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('+3 more',style: TextStyle(fontSize: 17,color: Colors.black),),

                    ],),


                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: <Widget>[
                        SizedBox(width: 5),
                        IconButton(
                          icon: Icon(Icons.watch_later,size: 25  ,color: Colors.redAccent,),
                          onPressed: (){
                            setState(() {
                            });
                          }
                          ,),
                        SizedBox(width: 5,),
                        IconButton(
                          icon: Icon(Icons.forward,size: 27.5  ,color: Colors.redAccent,),
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
    );
  }
}


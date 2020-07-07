import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp12/navigation.dart';
import 'package:flutterapp12/profile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'tabs.dart';
class Pepg extends StatefulWidget {
  @override
  _PepgState createState() => _PepgState();
}

class _PepgState extends State<Pepg> {
  List <String> names=['a','b','c','d','e','f','g','h','i'];
  List <String> username=['a1','b1','c1','d1','e','f','g','h','i'];
  List<int> val=[];
  bool toggle=true,c=false;
  Widget buildList(List<String> name,List<String> usrname,bool togglee) {
    List<Widget> list = new List<Widget>();
    for(var i = 0; i < names.length; i++) {
      list.add(  Material(
        elevation:
        3.0,
        shadowColor: Colors.grey[200],
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        child: Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: MediaQuery.of(context).size.width-20,
            height: 100,
            child: Container(
              padding: EdgeInsets.zero,
              child:Column(
                children: <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.all(5),
                    title: Wrap(
                      direction: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(0),
                          child: CircleAvatar (
                            backgroundImage: AssetImage('assets/batman.jpg'),
                            radius: 35,
                          ),
                        ),
                        SizedBox(width:10.0),
                        Column(
                          children: <Widget>[
                            SizedBox(height: 10,),
                            Text(name[i],style:TextStyle(fontSize: 25,fontFamily: 'Roboto',fontWeight: FontWeight.w300,),),
                            Text(usrname[i],style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),),
                          ],
                        )
                      ],
                    ),
                    trailing: !togglee?IconButton(
                      color: Colors.black,
                      icon: Icon( Icons.delete_forever),
                      onPressed: ((){
                        setState(() {
                          names.removeAt(i);
                          username.removeAt(i);
                        });

                      }),
                    ):
                    IconButton(onPressed: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage(name: names[i],username: username[i])));
                      });
                    }, icon:Icon(Icons.keyboard_arrow_right),color: Colors.black,iconSize: 25,),
                  )
                ],
              ),
            ),
          ),
        ),
      ));
      list.add(SizedBox(height: 8,));
    }
    return  Column(children: list);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white ,
        body: SafeArea(
          child: Stack(

            children:[
              Stack(

                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(00)),
                    child: Material(
                      elevation: 0.0,
                      child: Container(
                        height:( MediaQuery.of(context).size.height)*0.175,
                        color: Colors.redAccent,

                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.95,-0.9730),
                    child: Text('Friends ',
                      style: GoogleFonts.sourceSansPro(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.white),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0,-0.823),
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
                               suffixIcon: IconButton(
                                 onPressed: (){},
                                 icon: Padding(
                                   padding: const EdgeInsets.all(0.0),
                                   child: Icon(Icons.search,color: Colors.black,),
                                 ),),
                                fillColor: Colors.white,
                                border: InputBorder.none,
                                hintText:"search friends...",
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
                    alignment: Alignment(0.0,0),
                    child: DraggableScrollableSheet(
                    initialChildSize: 0.80,
                    builder: (context,scrollController) {
                      return SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 8,
                            ),


//                          Divider(color: Colors.grey[900],thickness: .3,),
//                          SizedBox(
//                            height: 50,
//                            child: ListTile(
//                              title: Text('Your group:',style: TextStyle(fontSize: 18,color: Colors.grey[900]),),
//                              trailing: Wrap(children: <Widget>[
//                                IconButton(
//                                  //add functionality
//                                  onPressed: (){},
//                                  icon: Icon(Icons.add),
//                                  color: Colors.black,
//                                  iconSize: 20,
//                                ),
//                                Builder(
//                                    builder: (BuildContext context){
//                                      return IconButton(
//                                        //add functionality
//
//                                        onPressed: (){
//                                          setState(() {
//                                            toggle=!toggle;
//                                            print('pressed');
//                                          });
//                                        },
//                                        icon: Icon(MdiIcons.deleteOutline),
//                                        color: Colors.black,
//                                        iconSize: 20,
//                                      );
//                                    }
//                                ),
//                              ],),
//                            ),
//                          ),
//                          Divider(color: Colors.grey[900],thickness: .3,),
                            buildList(names, username, toggle)
                          ],
                        ),
                      );
                    }
                    ),
                  ),
                ],
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

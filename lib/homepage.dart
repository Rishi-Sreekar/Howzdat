import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapp12/HomePgTile.dart';
import 'package:flutterapp12/item_page.dart';
import 'package:google_fonts/google_fonts.dart';
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
 List<String> images=['assets/ene.jpg','assets/batman.jpg','assets/dunkirk.jpg','assets/interstellar.jpg'];
 List<String> names=['Ee nagaraniki emayindi','The dark Knight','Dunkirk','Interstellar'];
 List<String> years=['2018','2009','2017','2014'];
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
            // header start
        Material(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(55),bottomRight: Radius.circular(55)),
          elevation: 10.0,
          shadowColor: Colors.black,

          child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(55),bottomRight: Radius.circular(55)),
              child: Container(
                height:( MediaQuery.of(context).size.height)*0.125,
                color: Colors.redAccent,
              ),
            ),
        ),
            //header end


            //logo start
//            Align(
//              alignment: Alignment(-0.98,-.99),
//              child: Image(
//                height: 110,
//                width: 110,
//                image: AssetImage('assets/logo.png'),
//                fit: BoxFit.contain,
//              ),
//            ),
            //logo end

            //name start
            Align(
                alignment: Alignment(0,-0.92),
                child: Text('Howzdat?',
                  style: GoogleFonts.greatVibes(fontSize: 45,fontWeight: FontWeight.w700,color: Colors.white),
                )
            ),
             //name end
//
            Align(
                alignment: Alignment(-.93,-0.245),
                child: Text('Suggestions',
                  style: GoogleFonts.sourceSansPro(fontSize: 27,fontWeight: FontWeight.w700,color: Colors.redAccent),
                )
            ),
            Align(
                alignment: Alignment(-.93,0.17),
                child: Text('No Suggestions',
                  style: GoogleFonts.sourceSansPro(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.grey[350]),
                )
            ),
            Stack(
              children:loopString.reversed.map((ls)=>
                 Align(
                   alignment: Alignment(0,0.1),
                   child: Dismissible(
                     child: InkWell(
                       onTap: (){
                         loopString.remove(loopString[i]);
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemPage(image: images[ls-1],name: names[ls-1],yr: years[ls-1])));
                       },
                       //add HomePgTile widget
                       child:HmPgTile(name: names[ls-1],img: images[ls-1],)

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
                alignment: Alignment(-.93,0.40),
                child: Text('Requests',style: GoogleFonts.sourceSansPro(fontSize: 27,fontWeight: FontWeight.w700,color: Colors.redAccent),
                )
            ),
//            Align(
//                alignment: Alignment(-.93,0.39),
//                child: Divider(thickness: 1,)),
            Align(
                alignment: Alignment(-.93,0.755),
                child: Text('No requests',
                  style: GoogleFonts.sourceSansPro(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.grey[350]),
                )
            ),
//            Align(
//                alignment: Alignment(-.93,0.98),
//                child: Divider(thickness: 1,)),
             Stack(
              children:loopString.reversed.map((ls)=>
                  Align(
                    alignment: Alignment(0,.875),
                    child: Dismissible(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemPage(image: images[ls-1],name: names[ls-1],yr: years[ls-1])));
                          loopString.remove(loopString[i]);
                        },
                        child: HmPgTile(name: names[ls-1],img: images[ls-1],)
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
                alignment: Alignment(-.93,-0.675),
                child: Text('Ask a question:',style: GoogleFonts.sourceSansPro(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.redAccent),)),
            Align(
              alignment: Alignment(0,-0.53),
              child: Container(
                padding: EdgeInsets.zero,
                height: 125,
                width: 400,
                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[400]),left:BorderSide(color: Colors.grey[400]),right: BorderSide(color: Colors.grey[400]),top: BorderSide(color: Colors.grey[400]) ),),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5,0, 0, 0),
                    child: TextField(

                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          hintText:"Type your question",
                          hintStyle: TextStyle(color: Colors.grey[400])
                      ),
                      maxLines: 2,
                      maxLengthEnforced: false,

                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.98,-0.36),
              child: RaisedButton (

                onPressed: (){
                  setState(() {

                  });

                },

                child:  Icon(Icons.send,color: Colors.white,),
                //change with color of choice
                color: Colors.redAccent,
              ),
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
                backgroundColor: Colors.redAccent,
              ),
            ),

          ],
        ),

      ),

          );
  }
}


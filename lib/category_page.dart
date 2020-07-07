import 'package:flutter/material.dart';
import 'package:flutterapp12/searchPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'tabs.dart';
import 'main.dart';
class CategoryPage extends StatefulWidget {


  @override
  _CategoryPageState createState() => _CategoryPageState();
}

Tabs tabs;
Home home;
class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
    children:tabvalues.map((tabs)=> Column(
        children:[
          Material(
            elevation: 15.0,
            shadowColor: Colors.black,
            borderRadius: BorderRadius.circular(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: SizedBox(
                height: 206,
                width: 250,
                child: Container(
                  padding: EdgeInsets.zero,
                  child:FlatButton(
                    onPressed: (

                        ){},
                    padding: EdgeInsets.zero,
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          onTap:(){
                            //add parameters to search page
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage()));
                          },
                          child: Image(
                            width: 250,
                            height: 150,
                            image: AssetImage(tabs.img),
                            fit: BoxFit.fill,
                          ),
                        ),
                        ListTile(
                          leading: Text(tabs.category,style: GoogleFonts.sourceSansPro(fontSize: 25, fontWeight: FontWeight.w700,color: Colors.redAccent),),
                          trailing: Icon(Icons.arrow_forward,color: Colors.redAccent,size: 25,),
                          onTap:() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage()));
                          },
                        )

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          )
        ])).toList()
    );
  }

}

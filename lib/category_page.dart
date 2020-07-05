import 'package:flutter/material.dart';
import 'package:flutterapp12/searchPage.dart';
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
          SizedBox(
            height: 10.0,
//            width: 15.0,
          ),

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
//                       alignment: Alignment.topCenter,
                            fit: BoxFit.fill,
                          ),
                        ),
                        ListTile(
                          leading: Text(tabs.category,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                          title: Icon(Icons.favorite,size: 25  ,color: Colors.pink,),
                          trailing: Icon(Icons.arrow_forward,color: Colors.black,size: 25,),
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
          )
        ])).toList()
    );
  }

}

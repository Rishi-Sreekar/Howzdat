import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tabs.dart';

class TabTemp extends StatelessWidget {
  final Tabs tabs;
  TabTemp({ this.tabs });

  @override
  Widget build(BuildContext context) {
        return Column(
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
                     Image(
                       width: 250,
                       height: 150,
                       image: AssetImage(tabs.img),
//                       alignment: Alignment.topCenter,
                       fit: BoxFit.fill,
                       ),
                     ListTile(
                       leading: Text(tabs.category,style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                       title: Icon(Icons.favorite,size: 35,color: Colors.pink,),
                       trailing: Icon(Icons.arrow_forward,color: Colors.black,size: 30,),
                        )

                   ],
                 ),
               ),
             ),
           ),
         ),
       )
            ])
          ;
  }
}

import 'package:flutter/material.dart';

class Flpi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20.0,
      shadowColor: Colors.redAccent,
      borderRadius: BorderRadius.circular(30.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 110,
          child: Container(
            padding: EdgeInsets.zero,
            child:Column(
              children: <Widget>[

                ListTile(

                  contentPadding: EdgeInsets.all(10),
                  title: Wrap(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(0),
                        child: CircleAvatar (
                          backgroundImage: AssetImage('assets/batman.jpg'),
                          radius: 40,

                        ),
                      ),
                      SizedBox(width:10.0),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 10,),
                          Text("Batman",style:TextStyle(fontSize: 25, fontStyle: FontStyle.normal),),
                          Text('bruce wayne',style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),),
                        ],
                      )
                    ],
                  ),
//                      isThreeLine: true,
//                      subtitle: Text('bruce wayne',style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),),
                  trailing: IconButton(onPressed: (){}, icon:Icon(Icons.keyboard_arrow_right),color: Colors.black,iconSize: 25,),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

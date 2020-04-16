import 'package:flutter/material.dart';
import 'tabs.dart';
class Item extends StatelessWidget {
  final Tabs tabs;
  Item({ this.tabs });

  @override
  Widget build(BuildContext context) {
    return  Material(
      elevation: 20.0,
      shadowColor: Colors.redAccent,
      borderRadius: BorderRadius.circular(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: SizedBox(
          width: 350,
          height: 440,
          child: Container(
            padding: EdgeInsets.zero,
            child:Column(
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                Image(
                  width: 300,
                  height: 300,
                  image: AssetImage('assets/batman.jpg'),
//                       alignment: Alignment.topCenter,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 30.0,
                ),
                ListTile(

                  contentPadding: EdgeInsets.fromLTRB(15,0,10,0),
                  title: Text('The Dark Knight',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                  isThreeLine: true,
                  subtitle: Text('(2009)',style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),),
                  trailing: IconButton(onPressed: (){}, icon:Icon(Icons.info_outline),color: Colors.black,iconSize: 25,),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'tabs.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class Cip extends StatefulWidget {
  @override
  _CipState createState() => _CipState();
}

class _CipState extends State<Cip> {
  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: Material(
        color: Colors.redAccent,
        elevation: 20.0,
        shadowColor: Colors.black,
        borderRadius: BorderRadius.circular(50.0),
        child: SizedBox(
          width: 100,
          height: 200,
          child: Container(
            padding: EdgeInsets.zero,
            child:Column(
              children: <Widget>[
                SizedBox(height: 10),
                Material(
                  shape: CircleBorder(),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.local_movies,color: Colors.black,size: 60.0,),
                  ),
                  elevation: 2,
                  color: Colors.white,

                ),
                ListTile(

//                  contentPadding: EdgeInsets.fromLTRB(15,0,10,0),
                  title: Text('Restaurant',style: TextStyle(fontSize: 14,color: Colors.white ),),
                )

              ],
            ),
          ),
        ),
      ),
    );;
  }
}


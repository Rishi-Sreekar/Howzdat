import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HLT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3.0,
      shadowColor: Colors.grey[200],
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: MediaQuery.of(context).size.width-20,
          height: 75,
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
                          radius: 20,

                        ),
                      ),
                      SizedBox(width:10.0),
                      Column(
                        //add a loop to iterate through group's participants
                        children: <Widget>[
                          SizedBox(height: 0.0,),
                          Text("<movie name>",style:GoogleFonts.sourceSansPro(fontSize: 23,fontWeight: FontWeight.w700,color: Colors.red),),
                        ],
                      )
                    ],
                  ),
//                      isThreeLine: true,
//                      subtitle: Text('bruce wayne',style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),),
                  trailing:  Text('64%',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.red  ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

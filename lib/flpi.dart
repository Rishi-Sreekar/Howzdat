import 'package:flutter/material.dart';

class Flpi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      shadowColor: Colors.grey[200],
      color: Colors.white,
      borderRadius: BorderRadius.circular(30.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width-20,
        height: 90,
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
                      //add a loop to iterate through group's participants
                      children: <Widget>[
                        SizedBox(height: 10,),
                        Text("Batman",style:TextStyle(fontSize: 25,fontFamily: 'Roboto',fontWeight: FontWeight.w300,),),
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
    );
  }
}

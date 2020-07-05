import 'package:flutter/material.dart';

class Flpi extends StatefulWidget {
  String name,username;
  bool radioValue;
  Flpi({this.name,this.username,this.radioValue});
  @override
  _FlpiState createState() => _FlpiState(name: this.name,username: this.username, radioVal:this.radioValue);
}

class _FlpiState extends State<Flpi> {
  String name,username;
  bool  radioVal;
  _FlpiState({this.name,this.username,this.radioVal});
  @override
  Widget build(BuildContext context) {
    return Material(
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
        radioVal?Text('hi'):Text('hello'),
            SizedBox(height: 10,),
          Text(name,style:TextStyle(fontSize: 25,fontFamily: 'Roboto',fontWeight: FontWeight.w300,),),
        Text(username,style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),),
        ],
      )
      ],
    ),
//                      isThreeLine: true,
//                      subtitle: Text('bruce wayne',style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),),
    trailing: IconButton(onPressed: (){
      setState(() {
        print(radioVal);
      });
    }, icon:Icon(Icons.keyboard_arrow_right),color: Colors.black,iconSize: 25,),
    )
    ],
    ),
    ),
    ),
    ),
    );
  }
}

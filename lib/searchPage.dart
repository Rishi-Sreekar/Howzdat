import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp12/hotListTile.dart';
import 'tabs.dart';
import 'package:flutterapp12/navigation.dart';


class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue='all';
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,

        body :Stack(
          children: <Widget>[
//            ClipRRect(
//            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(75),bottomRight: Radius.circular(75)),
//            child: Container(
//              height:( MediaQuery.of(context).size.height)*0.26,
//              color: Colors.redAccent,
//            ),
//          ),

            Align(
              alignment: Alignment(0,-.93),
              child: Container(
                padding: EdgeInsets.zero,
                width: 300,
                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black),left:BorderSide(color: Colors.black),right: BorderSide(color: Colors.black),top: BorderSide(color: Colors.black) ),),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5,0, 0, 0),
                  child: TextField(

                    decoration: InputDecoration(
                      fillColor: Colors.white,
                        border: InputBorder.none,
                        hintText:"Search...",
                        hintStyle: TextStyle(color: Colors.grey[400])
                    ),
                    maxLines: 1,
                    maxLengthEnforced: false,

                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(.93,-.93),
              child: IconButton(
                onPressed: (){},
                icon: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Icon(Icons.search,color: Colors.black,),
                ),),
            ),
            Align(alignment: Alignment(-.4,-.73),
                child: Text('Language:',)),
            Align(
              alignment: Alignment(0,-.76),
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 30,
                elevation: 16,
                focusColor: Colors.white,
                style: TextStyle(
                    color: Colors.black87
                ),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>['all','G1', 'G2', 'G3', 'G4'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Align(alignment: Alignment(-.4,-.56),
                child: Text('Genere:',style: TextStyle(fontSize: 17),)),
            Align(
              alignment: Alignment(0,-.58),
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 30,
                elevation: 16,
                style: TextStyle(
                    color: Colors.black
                ),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>['all','G1', 'G2', 'G3', 'G4'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Align(
              alignment:Alignment(0,-0.40),
              child: Container(
                child: Wrap(
                  children: <Widget>[
                    Divider(color: Color.fromRGBO(0, 0, 0, 0.3),thickness: .5,),
                    SizedBox(height: 8,),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 17,),
                            Text('Hot:',style: TextStyle(fontSize: 20,color: Colors.grey[900]),),
                            SizedBox(width: 10,),
//                          Icon(Icons.trending_up,size: 30,color:Colors.black ,),

                          ],
                        ),
                    SizedBox(height: 8,),
                    Divider(color: Color.fromRGBO(0, 0, 0, 0.3),thickness:.5,),
                  ],
                ),
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.65,
              builder: (context,scrollController){
             return SingleChildScrollView(
              child:  Column(
                children: <Widget>[
                    HLT(),
                  SizedBox(
                    height: 8.0,
                  ),
                  HLT(),
                  SizedBox(
                    height: 8.0,
                  ),
                  HLT(),
                  SizedBox(
                    height: 8.0,
                  ),
                  HLT(),
                  SizedBox(
                    height: 8.0,
                  ),
                  HLT(),
                  SizedBox(
                    height: 8.0,
                  ),
                  HLT(),
                  SizedBox(
                    height: 8.0,
                  ),HLT(),
                  SizedBox(
                    height: 8.0,
                  ),HLT(),
                  SizedBox(
                    height: 8.0,
                  ),HLT(),
                  SizedBox(
                    height: 8.0,
                  ),HLT(),
                  SizedBox(
                    height: 8.0,
                  ),
                ],
              )
              );
              }
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
                backgroundColor: Colors.red[700],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class lisp extends StatefulWidget {
  String cat;
  int per;
  double perDe;
  lisp({this.cat,this.per, this.perDe});
  @override
  _lispState createState() => _lispState(category: this.cat,per: this.per,perDec: this.perDe);
}

class _lispState extends State<lisp> {
String category;
int per;
double perDec;
_lispState({this.category,this.per,this.perDec});
var values=0.0;
Color colorRed=Colors.redAccent[200];
Color colorBlue=Colors.blueAccent[200];
Color colorGreen=Colors.lightGreenAccent[700];


Color sliCol(int valus){
  if(valus<45){
    return colorRed;
  }
  else if(valus>=45 && valus<65){
    return colorBlue;
  }
  else if(valus>=65&&valus<=100) {
    return colorGreen;
  }
  else{
    return Colors.white;
  }

}


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(15,0,0,0),
          child: Align(alignment: Alignment.centerLeft, child: Text(category,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),)),
        ),
        SizedBox(height: 5.0,),
        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15,0,0,0),
                child: LinearPercentIndicator(
                  width: 300,
                  lineHeight: 13.0,
                  animation: true,
                  percent: perDec,
                  backgroundColor: Color.fromRGBO(255, 255, 255, 0.3),
                  progressColor: sliCol(per),
                ),
              ),
            ),
            SizedBox(width: 10,)
            ,Text('$per%',style: TextStyle(color: sliCol(per),fontSize: 20,fontWeight: FontWeight.bold),)
          ],
        ),
        SizedBox(height:15),
      ],
    );
  }
}

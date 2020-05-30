import 'package:flutter/material.dart';

class Rtlt extends StatefulWidget {
  String cat;
  Rtlt({this.cat});
  @override
  _RtltState createState() => _RtltState(category: this.cat);
}

class _RtltState extends State<Rtlt> {
  var values=0.0;
  Color colorRed=Colors.red[600];
  Color colorBlue=Colors.blueAccent[400];
  Color colorGreen=Colors.lightGreenAccent[700];
  int v=0;
  String category;
  _RtltState({this.category});
  Color sliCol(var valus){
    if(valus<45){
      return colorRed;
    }
    else if(valus>=45 && values<65){
      return colorBlue;
    }
    else {
      return colorGreen;
    }

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(15,0,0,0),
          child: Align(alignment: Alignment.centerLeft, child: Text(category,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
        ),
        SizedBox(height: 5.0,),
        Row(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 300,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      trackHeight: 15.0,
                      disabledThumbColor: Colors.black,
//                                          overlayColor: Colors.transparent,
                      thumbColor: Colors.black87 ,
                      activeTrackColor: sliCol(values),
                      inactiveTrackColor: Color.fromRGBO(255, 255, 255, 0.3),
                      thumbShape:RoundSliderThumbShape(
                        enabledThumbRadius: 15,
                        disabledThumbRadius: 0.5,
                      )
                  ),
                  child: Slider(
                    min: 0.0,
                    max: 100.0,
                    value: values,
                    divisions: 20,
                    onChanged: (val){
                      setState(() {
                        values = val;
                        v=val.toInt();
                      }
                      );

                    },
                  ),
                ),
              ),
            ),
            Text('$v',style: TextStyle(color: sliCol(values),fontSize: 20,fontWeight: FontWeight.bold),)
          ],
        ),
        SizedBox(height:15),
      ],
    );
  }
}

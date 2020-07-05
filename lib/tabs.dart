import 'package:flutter/material.dart';


class Tabs {
  String category;
  String img;

  Tabs({this.category, this.img });

}
//Tabs tabs=Tabs(category: 'movies',img: AssetImage(Icons.movie));

List <Tabs> tabvalues=[
  Tabs(category: 'Movies',img: 'assets/movie1.jpg'),
  Tabs(category: 'Tv shows',img: 'assets/tvSeries.jpg'),
  Tabs(category: 'Restaurant',img: 'assets/restaurant.jpg'),
];

class Values {
  int number=0;
 static bool state=false;
  static  bool state1=false;
  static  bool clicked=false;
  static  bool clicked1=false;
  static  bool fClicked=true;
  static  bool fClicked1=true;
  static  double minWidth=60.0;
  static  double maxWidth=200.0;
  static  double width=60.0;
  static  double minWidth1=60.0;
  static  double maxWidth1=200.0; 
  static  double width1=60.0;
  static  bool rate=false;
  static  bool rate1=true;

}
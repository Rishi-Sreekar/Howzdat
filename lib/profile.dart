import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp12/UserData.dart';
import 'package:flutterapp12/groups.dart';
import 'package:flutterapp12/loading.dart';
import 'package:flutterapp12/navigation.dart';
import 'package:flutterapp12/user.dart';
import 'tabs.dart';
import 'package:provider/provider.dart';


class ProfilePage extends StatefulWidget {
  String name,username;
  @override
  _ProfilePageState createState() => _ProfilePageState(name: this.name,username: this.username);
}

class _ProfilePageState extends State<ProfilePage> {
  String name,username;
  _ProfilePageState({this.name,this.username});
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    return StreamBuilder<UsersData>(
      stream: UserData(uid: user.uid).usersdata,
      builder: (context, snapshot) {
       if(snapshot.hasData){
        UsersData userData=snapshot.data;
         return Scaffold(
             backgroundColor: Colors.white ,
             body: SafeArea(
               child: Stack(

                 children:[

                   SingleChildScrollView(
                     scrollDirection: Axis.vertical,
                     child: Stack(

                       children: <Widget>[
                         ClipRRect(
                           borderRadius: BorderRadius.only(bottomLeft: Radius.circular(45),bottomRight: Radius.circular(45)),
                           child: Material(
                             elevation: 0.0,
                             child: Container(
                               height:( MediaQuery.of(context).size.height)*0.50,
                               color: Colors.redAccent,

                             ),
                           ),
                         ),

                         Align(
                           alignment: Alignment.center,
                           child: Column(
                             children: <Widget>[
                               SizedBox(
                                   height:40
                               ),
                               Material(
                                 elevation: 20,
                                 shadowColor: Colors.redAccent,
                                 borderRadius: BorderRadius.circular(120),
                                 child: CircleAvatar(
                                   //maybe should change to network image
                                   backgroundImage: AssetImage('assets/rishi.jpg'),
                                   radius: 120,
                                 ),
                               ),
                               SizedBox(height: 15,),
                               Text(userData.name,style: TextStyle(fontSize: 33,color: Colors.white,fontFamily: 'Montserrat',fontWeight: FontWeight.w500),),
                               Text(userData.username,style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'Montserrat',fontWeight: FontWeight.w500),),

                               SizedBox(height: 95),
                               //accept/reject request
                               //62-114 should be replaced by groups in common
                               Align(
                                   alignment: Alignment(-.92,0),
                                   child: Text('Your Groups:',style: TextStyle(fontSize: 25),)),
                               SizedBox(height: 15,),
                               Row(
                                 children: <Widget>[
                                   SizedBox(width: 30 ,),
                                   //convert this into template
                                   InkWell(
                                     onTap: (){
                                       Navigator.push(context, MaterialPageRoute(builder: (context)=>FrndList(category: 'Movies',)));
                                     },
                                     child: Material(
                                       elevation: 15,
                                       shadowColor: Colors.black,
                                       color: Colors.white,
                                       borderRadius: BorderRadius.circular(20),
                                       child: Padding(
                                         padding: EdgeInsets.all(15),
                                         child: Column(
                                           children: <Widget>[
                                             CircleAvatar(
                                               backgroundImage: AssetImage('assets/movie1.jpg'),
                                               radius: 70,
                                             ),
                                             SizedBox(height: 5,),
                                             Text('movies',style: TextStyle(fontSize: 25),)

                                           ],
                                         ),
                                       ),
                                     ),
                                   ),
                                   SizedBox(width:20),
                                   InkWell(
                                     onTap: (){
                                       Navigator.push(context, MaterialPageRoute(builder: (context)=>FrndList(category: 'Tv Series',)));
                                     },
                                     child: Material(
                                       elevation: 10,
                                       shadowColor: Colors.black,
                                       color: Colors.white,
                                       borderRadius: BorderRadius.circular(20),
                                       child: Padding(
                                         padding: EdgeInsets.all(15),
                                         child: Column(
                                           children: <Widget>[
                                             CircleAvatar(
                                               backgroundImage: AssetImage('assets/tvSeries.jpg'),
                                               radius: 70,
                                             ),
                                             Text('Tv Shows',style: TextStyle(fontSize: 25),)

                                           ],
                                         ),
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                               SizedBox(height: 55,)
                             ],
                           ),
                         ),
                       ],
                     ) ,
                   ),
                   Values.state?
                   NavBar():Container(),

                   Align(
                     alignment: Alignment(-0.96,0.97),
                     child: FloatingActionButton(
                       onPressed: (){
                         setState(() {
                           Values.state=!Values.state;
                         });
                       },
                       child: Icon(Icons.menu,color: Colors.black,size: 20.0,),
                       elevation: 20,
                       splashColor: Colors.white,
                       backgroundColor: Colors.white,

                     ),
                   ),


                 ],),  )

         );
       }else{
         return Loading();
       }

      }
    );
  }
}

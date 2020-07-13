import 'package:flutter/material.dart';
import 'package:flutterapp12/Signin_page.dart';
import 'package:flutterapp12/Signup_page.dart';
class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            ClipPath(
              clipper:MyClipper() ,
              child: Container(
                  height:( MediaQuery.of(context).size.height)*0.55,
                  color: Colors.redAccent,
              ),
            ),
            Align(
              alignment: Alignment(0,0.77),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(90),
                child: SizedBox(
                  width: 200,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Sign In', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20.0),),
                    color: Colors.redAccent,
                    onPressed: (){
                     setState(() {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));

                     });

                    },
                  ),
                ),

              ),
            ),
            Align(
              alignment: Alignment(0,0.95),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: SizedBox(
                  width: 200,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Sign Up', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20.0),),
                    color: Colors.black,
                    onPressed: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                      });
                    },
                  ),
                ),

              ),
            ),

          ],
        ),
      ),
    );
  }
}
class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path =Path();
    Offset  CoSoP=Offset(0,size.height*0.95);
    Offset  CoEoP=Offset(size.width,size.height*0.35);
    path.lineTo(CoSoP.dx, CoSoP.dy);
    path.quadraticBezierTo(size.width*0.75, size.height, CoEoP.dx, CoEoP.dy);
    path.lineTo(size.width, 0);
    return  path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }


}
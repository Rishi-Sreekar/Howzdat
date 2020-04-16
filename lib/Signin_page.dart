import 'package:flutter/material.dart';
import 'first_page.dart';
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            ClipPath(
              clipper:MyClipper() ,
              child: Container(
                height:( MediaQuery.of(context).size.height)*0.55,
                color: Colors.redAccent,
              ),
            ),
  Align(
    alignment: Alignment(0,.45),
    child: SizedBox(
      width: 325,
      child: Card(
        elevation: .50,
        child: Wrap(

          children:     <Widget>[


                    Align(

                      alignment: Alignment(0,.15),

                      child: Container(

                        padding: EdgeInsets.zero,

                        width: 300,

                        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[200]),),),

                        child: TextField(

                          decoration: InputDecoration(

                              border: InputBorder.none,

                              hintText:"  Username",

                              hintStyle: TextStyle(color: Colors.grey[400])

                          ),

                          maxLines: 1,

                          maxLengthEnforced: false ,

                        ),

                      ),

                    ),

                      Align(

                        alignment: Alignment(0,.30),

                        child: Container(

                          padding: EdgeInsets.zero,

                          width: 300,

                          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[200])),

                          ),

                          child: TextField(

                            decoration: InputDecoration(

                                border: InputBorder.none,

                                hintText:"  Password",

                                hintStyle: TextStyle(color: Colors.grey[400])

                            ),

                            maxLines: 1,

                            maxLengthEnforced: false ,

                          ),

                        ),

                      ),

                      ],
        ),
      ),
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
                    onPressed: (){},
                  ),
                ),

              ),
            ),
]

        ),
      ),
    );
  }
}

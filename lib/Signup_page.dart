import 'package:flutter/material.dart';
import 'first_page.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                alignment: Alignment(0,-0.90),
                child: SizedBox(
//                  width: 325,
                  child: Card(
                    elevation: .50,
                    child: Wrap(
                      direction: Axis.horizontal,
                      children:     <Widget>[


                        Container(

                          padding: EdgeInsets.zero,

                          width: 175,

                          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[200]),right:BorderSide(color: Colors.grey[200]))),

                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(5,0, 0, 0),
                            child: TextField(

                              decoration: InputDecoration(

                                  border: InputBorder.none,

                                  hintText:"  First name",

                                  hintStyle: TextStyle(color: Colors.grey[400])

                              ),

                              maxLines: 1,

                              maxLengthEnforced: false ,

                            ),
                          ),

                        ),

                        Container(

                          padding: EdgeInsets.zero,

                          width: 175,

                          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[200]) ),

                          ),

                          child: TextField(

                            decoration: InputDecoration(

                                border: InputBorder.none,

                                hintText:"  Last Name",

                                hintStyle: TextStyle(color: Colors.grey[400])

                            ),

                            maxLines: 1,

                            maxLengthEnforced: false ,

                          ),

                        ),
                        Container(

                          padding: EdgeInsets.zero,

                          width: 350,

                          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[200]) ),

                          ),

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
                        Container(

                          padding: EdgeInsets.zero,

                          width: 350,

                          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[200]) ),

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
                        Container(

                          padding: EdgeInsets.zero,

                          width: 350,

                          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[200]) ),

                          ),

                          child: TextField(

                            decoration: InputDecoration(

                                border: InputBorder.none,

                                hintText:"  confirm password",

                                hintStyle: TextStyle(color: Colors.grey[400])

                            ),

                            maxLines: 1,

                            maxLengthEnforced: false ,

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
                      child: Text('Sign Up', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20.0),),
                      color: Colors.black,
                      onPressed: (){
                        setState(() {

                        });
                      },
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

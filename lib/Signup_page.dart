import 'package:flutter/material.dart';
import 'package:flutterapp12/loading.dart';
import 'first_page.dart';
import 'package:flutterapp12/Signin_page.dart';
import 'Auth.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String Fn='',op='';
  String Ln='';
  String Username='';
  String Email='';
  String password='';
  String error='';
  bool loading=false;
  final Authenticate _auth =Authenticate();
  final _formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return loading? Loading():  Scaffold(
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
                    child: Form(
                      key: _formKey,
                      child: Wrap(
                        direction: Axis.horizontal,
                        children:     <Widget>[
                          Container(
                            padding: EdgeInsets.zero,
                            width: 175,
                            decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[200]),right:BorderSide(color: Colors.grey[200]))),
                            child: Padding(
                             padding: const EdgeInsets.fromLTRB(5,0, 0, 0),
                             child: TextFormField(
                               onChanged: (val){
                                 setState(() {
                                   Fn=val;
                                 });
                               },
                               validator: (val)=>val.isEmpty? 'not valid':null,
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
                            child: TextFormField(
                              onChanged: (val){
                                setState(() {
                                  Ln=val;
                                });
                              },
                              validator: (val)=>val.isEmpty? 'Not valid':null,
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
                            child: TextFormField(
                              onChanged: (val){
                                setState(() {
                                  Username=val;
                                });
                              },
                              validator: (val)=>val.isEmpty? ' use valid username':null,
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
                            child: TextFormField(
                              onChanged: (val){
                                setState(() {
                                  Email=val;
                                });
                              },
                              validator: (val)=>val.isEmpty? 'Enter a valid Email':null,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText:"  Email",
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
                            child: TextFormField(
                              validator: (val)=>val.length<6? 'password must be atlest of 6 characters':null,
                              onChanged: (val){
                                setState(() {
                                  password=val;
                                });
                              } ,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText:" password",
                                  hintStyle: TextStyle(color: Colors.grey[400])
                              ),
                              maxLines: 1,
                              maxLengthEnforced: false ,
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            error,
                            style: TextStyle(color: Colors.red, fontSize: 14.0),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            op,
                            style: TextStyle(color: Colors.red, fontSize: 14.0),
                          )
                        ],
                      ),
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
                      onPressed: () async{
                        setState(() {
                          loading=true;
                        });
                        if(_formKey.currentState.validate()){
                           dynamic result=await _auth.signUp(Email,password,Username,Fn,Ln);

                           if(result==null){
                             setState(() {
                               error='Enter a valid Email';
                               loading=false;
                             });
                           }
                        }
                        Navigator.pop(context);
//                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
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

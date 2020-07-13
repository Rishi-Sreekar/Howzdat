import 'package:flutter/material.dart';
import 'package:flutterapp12/loading.dart';
import 'Auth.dart';
import 'first_page.dart';
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool obs=true;
  String Email='';
  String password='';
  String error='';
  bool loading=false;
  final Authenticate _auth =Authenticate();
  final _formKey= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body:loading? Loading() : SafeArea(
        child: Stack(
          children: [
            ClipPath(
              clipper:MyClipper() ,
              child: Container(
                height:( MediaQuery.of(context).size.height)*0.35,
                color: Colors.redAccent,
              ),
            ),
            Align(
              alignment: Alignment(0,-.15),
              child: SizedBox(
                width: 325,
                child: Card(
                  elevation: .50,
                  child: Form(
                    key: _formKey,
                    child: Wrap(
                      children:<Widget>[

                      Align(
                        alignment: Alignment(0,-.2),
                        child: Container(
                          padding: EdgeInsets.zero,
                          width: 300,
                          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[200]),),),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(5,0, 0, 0),
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
                        ),
                      ),
                        Align(
                          alignment: Alignment(0,.30),
                          child: Container(
                            padding: EdgeInsets.zero,
                            width: 300,
                            decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[200])),
                            ),
                            child: Padding(
                             padding: const EdgeInsets.fromLTRB(5,0, 0, 0),
                              child: TextFormField(
                                validator: (val)=>val.length<6? 'password must be atlest of 6 characters':null,
                                onChanged: (val){
                                  setState(() {
                                    password=val;
                                  });
                                } ,
                               obscureText: obs,
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye),
                                    onPressed: ((){
                                      setState(() {
                                        obs=!obs;
                                      });
                                    }),
                                    color: Colors.grey[350],
                                  ),
                                    border: InputBorder.none,
                                    hintText:"  Password",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                                maxLines: 1,
                                maxLengthEnforced: false ,
                              ),
                            ),
                          ),
                        ),
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
                    child: Text('Sign In', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20.0),),
                    color: Colors.redAccent,
                    onPressed: () async {
                      if(_formKey.currentState.validate()){
                        dynamic result= await _auth.signIn(Email,password);
                        setState(() {
                          loading=true;
                        });
                        if(result==null){
                          setState(() {
                            error='Email/password wrong please check';
                            loading=false;
                          });
                        }
                      }
                      Navigator.pop(context);
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

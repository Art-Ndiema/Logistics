// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trial/main.dart';
import 'forgot_pass.dart';
class Sign extends StatelessWidget {
  Sign({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Icon(Icons.android_rounded,
                  color: Colors.purpleAccent, size: 150),
              Text("Sign in",
                  style: TextStyle(
                    color: Color.fromARGB(255, 191, 23, 206),
                    fontWeight: FontWeight.w500,
                    fontSize: 50,
                  )),

              //user ID box
              Container(
                  padding: EdgeInsets.all(8),
                  child: TextFormField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'Enter your user ID',
                        prefixIcon: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 199, 161, 206),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  )),
             SizedBox(
                height: 20,
              ),
              //password box

              Container(
                padding: EdgeInsets.all(8),
                child: TextFormField(
                  maxLines: 1,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 199, 161, 206),
                    ),
                    hintText: '********',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              //forgot password
               Padding(
                 padding:  EdgeInsets.fromLTRB(180,0,0,12),
                 child: InkWell( 
                  onTap: () {
                    //forgot password page
                    Navigator.push(
                      context,MaterialPageRoute(builder: (context) => forgot_pass()),);
               },
              child: Text
              ('Forgot your password ?',style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),)),
               ),
             //sign in button
              ElevatedButton(
                onPressed: () {
                  // main Page
                  Navigator.push(
                      context,MaterialPageRoute(builder: (context) => Main()),);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  fixedSize: Size(200, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45)),
                ),
                child:  Text(
                  'Sign in',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
             
            ],
          ),
          )),
    
                bottomNavigationBar: BottomAppBar(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text("Have a problem?  "),
              InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return SimpleDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8.5))
                            ),
                            children: [
                              SimpleDialogOption(
                                  onPressed: (() {
                                    Navigator.pop(context);
                                  }),
                                  child: Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Icon(Icons.whatsapp_outlined, color: Colors.green,),
                                      SizedBox( width: 10),
                                      Text('Chat Via Message')
                                    ],
                                  )),
                              SizedBox(height: 10),
                               Divider( height: 2, color: Colors.black,),
                              SimpleDialogOption(
                                  onPressed: (() {
                                    Navigator.pop(context);
                                  }),
                                  child: Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Icon(Icons.call_rounded),
                                      SizedBox(width: 10),
                                      Text('Make a call')
                                    ],
                                  )),
                               SizedBox(height: 10),
                                Divider( height: 2, color: Colors.black,),
                              SimpleDialogOption(
                                  onPressed: (() {
                                    Navigator.pop(context);
                                  }),
                                  child: Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Icon(Icons.email_rounded,color: Colors.red,),
                                       SizedBox(width: 10),
                                      Text('Write an email')
                                    ],
                                  ))
                            ],
                          );
                        });
                  },
                  child: Text('Contact us',style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),))
          ],
        ),
            )));
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/foundation/key.dart';

import 'sign_in.dart';

class forgot_pass extends StatelessWidget {
  forgot_pass({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
           child: Center(
             child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                    Icon(Icons.lock_reset_rounded,
                      color: Colors.purpleAccent, size: 100),
                  Text("Forgot Your Password ?",
                      style: TextStyle(
                        color: Color.fromARGB(255, 191, 23, 206),
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      )),
                      Padding(
                        padding:  EdgeInsets.fromLTRB(10,10,10,0),
                        child: Text("Enter the email associated with this account",style: TextStyle(color:Colors.purple,)),
                      ),
                      Container(
                  padding: EdgeInsets.fromLTRB (8,20,8,30),
                  child: TextFormField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color.fromARGB(255, 199, 161, 206),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45),
                      ),
                    ),
                  )),
                ElevatedButton(
                onPressed: () {
                  // sign in Page
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Sign()),
                    );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  fixedSize: Size(200,60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45)),
                ),
                child:  Text(
                  'Reset your password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
               Text("Already have an account ?  "),
              InkWell( onTap: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Sign()),
                    );
              },
                child: Text('Sign in',style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),))
                               ]
                ),
           ),
        ),
      ),
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
            ))
    );
  }
}

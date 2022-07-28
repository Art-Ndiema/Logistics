// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'profile.dart';

class Edit extends StatelessWidget {
   Edit({Key? key}) : super(key: key);
 TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
   TextEditingController phoneController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 225, 147, 239),
            elevation: 0,
            toolbarHeight: 100,
            leading: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                )),
          ),
          body: Stack(
            children: [
              Container(
                height: kToolbarHeight,
                color: Color.fromARGB(255, 225, 147, 239),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Testing testing ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Testing@gmail.com'),
                      ],
                    ),
                  ],
                ),
              ),



                 Padding(
                   padding:  EdgeInsets.only(top: kToolbarHeight),
                   child: SingleChildScrollView(
                     child: Column( 
                       children: [
                        
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: TextFormField(
                             maxLines: 1,
                             decoration: InputDecoration(
                              
                   
                               hintText: 'enter your name',hoverColor: Colors.grey,
                               labelText: 'Name',labelStyle: TextStyle(
                                          color: Colors.black,
                              ) , 
                             enabledBorder: UnderlineInputBorder(
                   borderSide: BorderSide(color: Colors.black),
                   ),
                             ),
                           ),
                         ),

                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: TextFormField(
                             maxLines: 1,
                             decoration: InputDecoration(
                   
                               hintText: 'enter your email',hoverColor: Colors.grey,
                               labelText: 'Email',labelStyle: TextStyle(
                                          color: Colors.black,
                              ) , 
                             enabledBorder: UnderlineInputBorder(
                   borderSide: BorderSide(color: Colors.black),
                   ),
                             ),
                           ),
                         ),

                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: TextFormField(
                             maxLines: 1,
                             decoration: InputDecoration(
                   
                               hintText: '+254700000000',hoverColor: Colors.grey,
                               labelText: 'Phone',labelStyle: TextStyle(
                                          color: Colors.black,
                              ) , 
                             enabledBorder: UnderlineInputBorder(
                   borderSide: BorderSide(color: Colors.black),
                   ),
                             ),
                           ),
                         ),

                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: TextFormField(
                             maxLines: 1,
                             decoration: InputDecoration(
                   
                               hintText: 'Nairobi',hoverColor: Colors.grey,
                               labelText: 'City',labelStyle: TextStyle(
                                          color: Colors.black,
                              ) , 
                              
                             enabledBorder: UnderlineInputBorder(
                   borderSide: BorderSide(color: Colors.black),
                   ),
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Row(
                             children: [

                               ElevatedButton(
                onPressed: () {
                  //Cancel
                },
                 style: ElevatedButton.styleFrom(side: BorderSide(width: 5.0, color: Colors.purple,),
                  primary: Colors.white,
                  fixedSize: Size(150, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45)),
                ),
                child:  Text(
                  'Cancel',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple
                  ),
                ),
              ),

SizedBox(width: 20,),
                               ElevatedButton(
                onPressed: () {
                  //update
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  fixedSize: Size(150, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45)),
                ),
                child:  Text(
                  'Update',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

             
                             ],
                           ),
                         ),


                         ],

                         
                     ),
                   ),
                 ),

            ],
          )),
    );
  }
}

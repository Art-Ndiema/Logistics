// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'profile.dart';
class Edit extends StatelessWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 225, 147, 239),
        elevation: 0,
        flexibleSpace:  Container(
          width: double.infinity,
           color: Color.fromARGB(255, 225, 147, 239),
           child: Text("hello"),

        ), 
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
      body: Column(

        children: [
      
        SingleChildScrollView()

      ],),
    );
  }
}

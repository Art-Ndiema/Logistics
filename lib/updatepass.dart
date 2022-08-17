// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Update extends StatelessWidget {
  const Update({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
         leading: IconButton(
                        onPressed: () {
                           Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                      color: Colors.black,
                        )),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Center(child: Icon(Icons.update_outlined,color:Color.fromARGB(255, 71, 10, 183),size: 50,)),
            Center(child: Text('Update Password',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 71, 10, 183),fontSize:30),)),
            SizedBox(height: 15,),
            Text('Enter current password',style: TextStyle(color:Color.fromARGB(255, 71, 10, 183),),),
            
             Container(
                      padding: EdgeInsets.all(8),
                    child: TextFormField(
                      maxLines: 1,
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Color.fromARGB(255, 199, 161, 206),
                        ),
                        hintText: '********',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
      
                    Text('Enter new password',style: TextStyle(color: Color.fromARGB(255, 71, 10, 183),),),
            
             Container(
                        padding: EdgeInsets.all(8),
                    child: TextFormField(
                      maxLines: 1,
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Color.fromARGB(255, 199, 161, 206),
                        ),
                        hintText: '********',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
      
      
        Text('Re-enter new password',style: TextStyle(color: Color.fromARGB(255, 71, 10, 183),),),
            
             Container(
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                      maxLines: 1,
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Color.fromARGB(255, 199, 161, 206),
                        ),
                        hintText: '********',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
      
                  SizedBox( height: 50,),
                  Center(
                    child: ElevatedButton(
                    onPressed: () {
                      // updated password
                     
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 1, 35, 159),
                      fixedSize: Size(250, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45)),
                    ),
                    child:  Text(
                      'Update password   ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,fontSize: 20
                      ),
                    ),
                ),
                  ),
      
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:trial/updatepass.dart';
import 'main.dart';
import 'editprof.dart';
import 'Active.dart';
import 'dashboard.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 71, 10, 183),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 71, 10, 183),
        centerTitle: true,
        title: Text('Profile',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Main()),
              );
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://picsum.photos/seed/picsum/200/300'),
                radius: 60,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 10, 0, 10),
            child: Center(
                child: Text(
              " Testing Testing ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            )),
          ),
          Center(
              child: Text(
            'Testing @gmail.com', style: TextStyle(color: Colors.grey),
          )),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Edit()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    fixedSize: Size(200, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(45)),
                  ),
                  child: Text('Edit Profile')),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                //Active orders page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Active()),
                );
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.query_stats_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Tracking',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Divider(
              height: 25,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                //Dasboard page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.dashboard_customize_rounded,
                    color: Colors.orange,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '  Dashboard',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Divider(
              height: 25,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Update()),
                );
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.password_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Update password',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Divider(
              height: 25,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                //Dialog Option
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.5))),
                                children: [
                                  Icon(Icons.warning_outlined,color: Colors.red,size: 50,),
                                  Center(child: Text('Are you sure you want to sign out ?')),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(68,10,20,10),
                                    child: Row( crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        TextButton(onPressed: (){}, child: Text('Yes' ,style: TextStyle(color: Colors.black),)
                                        ,style: TextButton.styleFrom( shadowColor: Colors.grey)),
                                        SizedBox(width: 30,),
                                         TextButton(onPressed: (){}, child: Text('No'  ,style: TextStyle(color: Colors.black))),
                                      ],
                                    ),
                                  ),
                                 
                                ],
                      );
                    });
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.logout_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Sign out',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Divider(
              height: 25,
              color: Colors.black,
            ),
          ),
        ],
      )),
    );
  }
}

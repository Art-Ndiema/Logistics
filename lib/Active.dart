// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'profile.dart';

class Active extends StatelessWidget {
  const Active({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text('Active Orders',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black)),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
      ),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: kToolbarHeight,
            child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                 scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                     decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 1),
                          blurRadius: 5,
                          spreadRadius: 2,
                        ),
                        
                      ],  
                          color: Color.fromARGB(255, 249, 216, 255),
                          borderRadius: BorderRadius.circular(10),
                        ),
                         padding: EdgeInsets.all(15.0),
                         margin: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 30,
                                 width: 30,
                           decoration: BoxDecoration(
                      color: Color.fromARGB(255, 152, 235, 246),
                      borderRadius: BorderRadius.circular(25)
                    ),
                                  child: Center(child: Icon(Icons.check_circle_outline))),
                                  SizedBox(width:10),
                                  Text('Text 1u9468789089',style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],
                            ),
                            Text('Pickup: '),
                            Text('Mombasa \n',style: TextStyle(fontWeight: FontWeight.bold,),),
                            Text('Destination: '),
                            Text('Lesotho \n',style: TextStyle(fontWeight: FontWeight.bold,),),
                            Text('Status: '),
                            Text('On Transit \n',style: TextStyle(fontWeight: FontWeight.bold,),),

                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Container(
                               alignment: Alignment.bottomCenter,
                                 child: ElevatedButton(
                onPressed: () {
                 //
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 152, 235, 246),
                  fixedSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45)),
                ),
                child:  Text(
                  'More details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,color: Colors.purple
                  ),
                ),
              ),
                               ),
                             ),
                          ]
                        ),
                  );
                  
                }),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: kToolbarHeight,
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sort List',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 152, 235, 246),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(
                      child: IconButton(
                        icon: Icon(
                      Icons.filter_list_sharp,
                      color: Color.fromARGB(255, 255, 75, 204),
                          size: 30,
                        ),
                        onPressed: () {},
                        alignment: Alignment.topRight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

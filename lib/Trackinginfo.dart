// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Tracking extends StatelessWidget {
  const Tracking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white54,
          centerTitle: true,
          title: Text('Tracking Information',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 1),
                        blurRadius: 5,
                        spreadRadius: 2,
                      ),
                    ],
                    color: Color.fromARGB(255, 9, 11, 147),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.all(15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Tracking number',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '123456',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                        Text(
                          'Pickup location',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Mombasa',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                        Text(
                          'Destination',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Lesotho',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                        Text(
                          'Dispatch date',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '01/07/2022',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                        Text(
                          'Truck Reg. number',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'KBH 345X',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                        Text(
                          'Trailor Reg. number',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '123455',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Weight ',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '5.6 tons',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Cost ',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '\$123',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                      ]),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    //Map
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Color.fromARGB(255, 9, 11, 147),
                    ),
                    primary: Colors.white,
                    fixedSize: Size(300, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(45)),
                  ),
                  child: Text(
                    'View Map',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 9, 11, 147),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text('More Details', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                    Row(
                      children: [
                        Text('Status:',style: TextStyle(fontSize: 20),),
                        SizedBox(width: 10,),
                        Text('On transit',style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 15,)
                      ],
                    ),
                     Row(
                      children: [
                        Text('TRA number:',style: TextStyle(fontSize: 20),),
                        SizedBox(width: 10,),
                        Text('AS224568GFDS5',style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 15,)
                      ],
                    ),
                     Row(
                      children: [
                        Text('Reciept number:',style: TextStyle(fontSize: 20),),
                        SizedBox(width: 10,),
                        Text('123456',style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 15,)
                      ],
                    ),
                     Row(
                      children: [
                        Text('Registration date:',style: TextStyle(fontSize: 20),),
                        SizedBox(width: 10,),
                        Text('01/07/2022',style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 15,)
                      ],
                    ),
                     Row(
                      children: [
                        Text('Estimated delivery date:',style: TextStyle(fontSize: 20),),
                        SizedBox(width: 10,),
                        Text('01/12/2022',style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 15,)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

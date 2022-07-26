// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trial/profile.dart';
import 'sign_in.dart';
import 'notification.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sign(),
    ));

class Main extends StatelessWidget {
  Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          color: Colors.purple,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Sign()),
            );
          },
          icon: Icon(
            Icons.android,
            size: 50,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notifications()),
                );
              },
              icon: const Icon(Icons.notifications_none_outlined)),
          IconButton(
              onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              icon: const Icon(Icons.account_circle_rounded)),
        ],
        actionsIconTheme: const IconThemeData(
            size: 40.0, color: Colors.purple, opacity: 10.0),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 300,
                padding: EdgeInsets.fromLTRB(25, 8, 10, 20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 170, 12, 198),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text("Track your shipment",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Text("Enter your tracking number",
                        style: TextStyle(color: Colors.white)),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: TextFormField(
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: 'Start tracking',
                          prefixIcon: Icon(
                            Icons.navigation,
                            color: Color.fromARGB(255, 199, 161, 206),
                          ),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Color.fromARGB(255, 199, 161, 206),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Icon(
                      Icons.query_stats,
                      size: 100,
                      color: Color.fromARGB(255, 199, 161, 206),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('  Services\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  ElevatedButton(
                    onPressed: () {
                      // upload docs Page
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                      fixedSize: Size(200, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45)),
                    ),
                    child: Text(
                      'Place order  +',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 5, 10, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Pending approvals',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  TextButton(
                    onPressed: (() {}),
                    child: InkWell(
                        onTap: () {
                          //pending Orders page
                        },
                        child: Text(
                          'see all',
                          style: TextStyle(
                              color: Colors.orangeAccent,
                              decoration: TextDecoration.underline),
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 249, 216, 255),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(30, 8, 15, 8),
                                child: Icon(
                                  Icons.pending_actions_rounded,
                                  color: Color.fromARGB(255, 44, 183, 225),
                                  size: 30,
                                ),
                              ),
                            ),
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text('From: '),
                                Text('Mombasa',
                                    style: TextStyle(color: Colors.grey))
                              ],
                            ),
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text('To: '),
                                Text('Lesotho',
                                    style: TextStyle(color: Colors.grey))
                              ],
                            ),
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text('Status: '),
                                Text('Pending',
                                    style: TextStyle(color: Colors.grey))
                              ],
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        //order status page
                      },
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 5, 10, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Active Orders ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  TextButton(
                    onPressed: (() {}),
                    child: InkWell(
                        onTap: () {
                          //pending Orders page
                        },
                        child: Text(
                          'see all',
                          style: TextStyle(
                              color: Colors.orangeAccent,
                              decoration: TextDecoration.underline),
                        )),
                  )
                ],
              ),
            ),
            InkWell(
                child: Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 249, 216, 255),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('Origin: '),
                          Text('Mombasa', style: TextStyle(color: Colors.grey))
                        ],
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('Destiation: '),
                          Text('Lesotho', style: TextStyle(color: Colors.grey))
                        ],
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('Vehicle Registration: '),
                          Text('KBH 209X', style: TextStyle(color: Colors.grey))
                        ],
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('TRA Number: '),
                          Text('123456789',
                              style: TextStyle(color: Colors.grey))
                        ],
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  //Tracking info page
                }),
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return SimpleDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.5))),
                    children: [
                      SimpleDialogOption(
                          onPressed: (() {
                            Navigator.pop(context);
                          }),
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Icon(
                                Icons.whatsapp_outlined,
                                color: Colors.green,
                              ),
                              SizedBox(width: 10),
                              Text('Chat Via Message')
                            ],
                          )),
                      SizedBox(height: 10),
                      Divider(
                        height: 2,
                        color: Colors.black,
                      ),
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
                      Divider(
                        height: 2,
                        color: Colors.black,
                      ),
                      SimpleDialogOption(
                          onPressed: (() {
                            Navigator.pop(context);
                          }),
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Icon(
                                Icons.email_rounded,
                                color: Colors.red,
                              ),
                              SizedBox(width: 10),
                              Text('Write an email')
                            ],
                          ))
                    ],
                  );
                });
          },
          backgroundColor: Colors.purple,
          child: const Icon(
            Icons.call,
          )),
    );
  }
}

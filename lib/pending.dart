import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Pending extends StatelessWidget {
  const Pending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      elevation: 0.0,
      centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Pending Orders',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
                 leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
    ),
    body: ListView.builder(
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
                      color: Colors.white,
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
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.circular(25)),
                                    child: Center(
                                        child: Icon(Icons.hourglass_empty_rounded))),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'AWH347HJKWE',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Text('Pickup: '),
                          Text(
                            'Mombasa \n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Destination: '),
                          Text(
                            'Lesotho \n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Status: '),
                          Text(
                            'On Transit \n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              child: ElevatedButton(
                                onPressed: () {
                                  //Order Status page
                                 
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 222, 207, 250),
                                  fixedSize: Size(300, 50),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(45)),
                                ),
                                child: Text(
                                  'More details',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,fontSize: 20,
                                      color: Color.fromARGB(255, 9, 11, 147),),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  );
                }),
    );
  }
}

// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'main.dart';

class Notifications extends StatelessWidget {
  Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 225, 147, 239),
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 225, 147, 239) ,
        elevation: 0,
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
                        actions: [Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: CircleAvatar(
                      backgroundImage: NetworkImage(
                            'https://picsum.photos/seed/picsum/200/300'),
                      radius: 50,
                    ),
                        ),

                        ],
      ),
      body: 
      Column(
        children: [            
          Container( 
            padding: EdgeInsets.all(5),  
             width: double.infinity,
            height:MediaQuery.of(context).size.height*0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text("Notifications",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_list_sharp,
                      color: Colors.white,
                      size: 30,
                    ))

              ],
            ),
          )
          ,Container(
            width: double.infinity,
            height:MediaQuery.of(context).size.height*0.77,
            margin: EdgeInsets.only(left: 5),
            decoration:BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                bottomLeft: Radius.circular(35), 
              )

            ),
            child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.fromLTRB(50, 10, 0, 0),
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Row(
           children: [
            Icon(Icons.local_shipping_rounded,color: Colors.indigo,),
            Text('Document approved/n'),
            Text('1/08/2022')
           ],
          ),
          );
        }), 

          )
        ],
      ),
     
       
     
    );
  }
}

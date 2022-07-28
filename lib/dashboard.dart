// ignore_for_file: prefer_const_constructors
import 'main.dart';
import 'package:flutter/material.dart';
import 'profile.dart';
class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
  backgroundColor: Colors.purple,
            elevation: 0,        
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
                centerTitle: true,
            title: Text('Dashboard',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,),
      ),),
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
           
            Row( mainAxisAlignment:MainAxisAlignment.center,
            children:[
              Column(
                children: [
                  Text('Testing Test',style: TextStyle(fontWeight: FontWeight.bold)),
                   Text('Member since 2018',style: TextStyle(color: Colors.grey))
      
                ],
              ),
               SizedBox(width: 30,),
            ],),
            Padding(
              padding: const EdgeInsets.fromLTRB(60,20,30,20),
              child: Row( crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Column(
                  children: [ 
                    Text('Active orders' ,style: TextStyle(color: Colors.grey)),
                   Text('20',style: TextStyle( fontWeight: FontWeight.bold)),
                   SizedBox(height: 20,),
                   Text('Transit tonnes' ,style: TextStyle(color: Colors.grey)),
                    Text('70',style: TextStyle(fontWeight: FontWeight.bold))
      
      
                  ],
                ),
                SizedBox(width: 40,),
      
                Column(
                  children: [ 
                    Text('Deliverd shipments' ,style: TextStyle(color: Colors.grey)),
                   Text('20',style: TextStyle( fontWeight: FontWeight.bold)),
                   SizedBox(height: 20,),
                   Text('Delivered tonnes' ,style: TextStyle(color: Colors.grey)),
                    Text('2000',style: TextStyle(fontWeight: FontWeight.bold))
      
                  ],)
              ],),
            ),
      
            
            Container(
             
               height: 400,
              decoration: BoxDecoration(
            
             borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25), 
                ),
             color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(1,10,2,30),
                          child: Center(child: Text('Learn More About ', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GridView.count(
                        
                            crossAxisCount: 2,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            shrinkWrap: true,
                  children: [
                    InkWell(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 214, 102, 255),
                            borderRadius:BorderRadius.all(Radius.circular(20.0),),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Icon(Icons.receipt_long_outlined,size: 40,),
                                SizedBox( height: 25),
                                Text('Tax', style: TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 20),),
                                Text('Tarrif', style: TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 20),)
                                ],
                            ),),),
                      onTap: (){
                        // link 1
                      },
                    ),
                     InkWell(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 251, 255, 172),
                            borderRadius:BorderRadius.all(Radius.circular(20.0),),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Icon(Icons.anchor_outlined ,size: 40,),
                                SizedBox( height: 25),
                                Text('Port', style: TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 20),),
                                Text('Charges', style: TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 20),)
                                ],
                            ),),),
                      onTap: (){
                        // link 2
                      },
                    ),
                     InkWell(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 118, 235, 180),
                            borderRadius:BorderRadius.all(Radius.circular(20.0),),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Icon(Icons.local_police_outlined,size: 40,),
                                SizedBox( height: 25),
                                Text('Government', style: TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 20),),
                                Text('Policies', style: TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 20),)
                                ],
                            ),),),
                      onTap: (){
                        // link 3
                      },
                    ),
                     InkWell(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(253, 245, 187, 93),
                            borderRadius:BorderRadius.all(Radius.circular(20.0),),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Icon(Icons.info_outlined,size: 40,),
                                SizedBox( height: 25),
                                Text('About', style: TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 20),),
                                Text('Us', style: TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 20),)
                                ],
                            ),),),
                      onTap: (){
                        // link
                      },
                    ),
                  
                  ],
                  
                            ),
                    ),
                            
                  
                      ],
                    ),
                  ),
            
            ),
           
           
          ],
        ),
      ),
     floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color.fromARGB(255, 242, 146, 255),
        foregroundColor: Colors.black,
        onPressed: () {
            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Main()),
                          );
        },
        icon: Icon(Icons.home_outlined),
        label: Text('Home'),
      )
      );
  }
}

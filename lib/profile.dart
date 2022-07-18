// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'main.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 225, 147, 239),
      appBar: AppBar(
        elevation: 0,
         backgroundColor: Color.fromARGB(255, 225, 147, 239),
         centerTitle: true,
         title:Text('Profile', style: TextStyle( fontSize: 30, fontWeight: FontWeight.bold)),
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
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
        
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                                    'https://picsum.photos/seed/picsum/200/300'),
                              radius: 60,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8,10,0,10),
                child: Center(child: Text(" Testing Testing ",style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20, color: Colors.white),)),
              ),
              Center(child: Text('Testing @gmail.com',)),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    //edit profile page
                  }, 
                   style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 99, 234, 223),
                        fixedSize: Size(200, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45)),
                      ),
                  child:  Text('Edit Profile')),
                ),
              )
            ,
            SizedBox(height: 25,),
          
     
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: InkWell(
                onTap: () {
                  //Active orders page

                },
                 child:Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.query_stats_outlined,color: Colors.white,size: 30,),
                    SizedBox(width: 10,),
                    Text('Tracking',style: TextStyle( color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    
                  ],
                 ) ,

                ),
             ),
        
               Padding(
                 padding: const EdgeInsets.fromLTRB(8,0,8,0),
                 child: Divider( height:25, color: Colors.black,),
               ),
               
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: InkWell(
                onTap: () {
                   //Dasboard page

                },
                 child:Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.query_stats_outlined,color: Colors.white,size: 30,),
                    SizedBox(width: 10,),
                    Text('Tracking',style: TextStyle( color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                     
                  ],
                 ) ,

                ),
             ),
        
               Padding(
                 padding: const EdgeInsets.fromLTRB(8,0,8,0),
                 child: Divider( height: 25, color: Colors.black,),
               ),
               
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: InkWell(
                onTap: () {
                    //Update password page

                },
                 child:Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.query_stats_outlined,color: Colors.white,size: 30,),
                    SizedBox(width: 10,),
                    Text('Tracking',style: TextStyle( color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                     
                  ],
                 ) ,

                ),
             ),
        
               Padding(
                 padding: const EdgeInsets.fromLTRB(8,0,8,0),
                 child: Divider( height: 25, color: Colors.black,),
               ),
               
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: InkWell(
                onTap: () {
                   //Dialog Option

                },
                 child:Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.query_stats_outlined,color: Colors.white,size: 30,),
                    SizedBox(width: 10,),
                    Text('Tracking',style: TextStyle( color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                     
                  ],
                 ) ,

                ),
             ),
        
               Padding(
                 padding: const EdgeInsets.fromLTRB(8,0,8,0),
                 child: Divider( height: 25, color: Colors.black,),
               ),
           
           
        ],
      ) ),
    );
  }
}

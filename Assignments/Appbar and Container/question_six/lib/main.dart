import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override       
  Widget build(BuildContext context){
    return MaterialApp( 
      debugShowCheckedModeBanner:false,
      home: Scaffold( 
        body:Center( 
          child:SingleChildScrollView(
            scrollDirection:Axis.vertical,
             child:Column( 
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.purple,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.pink,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.orange,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.grey,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.cyan,
              ),

            ],
            ),
          )
        )
      ),
    );
  }
}
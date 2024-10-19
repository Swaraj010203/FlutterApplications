import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return (
      MaterialApp(
        debugShowCheckedModeBanner:false,
        home:Scaffold(
          body:Center(
            child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Container(
                height:200,
                width:200,
                color:Colors.orange,
              ),
              Container(
                height:200,
                width:200,
                color:Colors.amber,
              ),
              Container(
                height:200,
                width:200,
                color:Colors.red,
              ),
            ],
          ),
          )
        ),
      )
    );
  }
}
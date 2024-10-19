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
        debugShowCheckedModeBanner: false,
        home:Scaffold(  
          appBar: AppBar( 
            title:const Text("space parameter"),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          body: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisAlignment: MainAxisAlignment.spaceAround
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ],),
        )
      )
    );
  }
}
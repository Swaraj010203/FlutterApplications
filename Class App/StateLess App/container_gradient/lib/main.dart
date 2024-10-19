import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override   
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false, 
      home:Scaffold( 
        appBar:AppBar(
          title: const Text("Gradient Builder"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body:Center( 
          child: Container( 
            height: 200,
            width: 200,
            alignment: Alignment.bottomLeft,
            decoration: const BoxDecoration( 
              gradient:LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.black,
                  Colors.pink
                ]
              )
            ),
            // child: const Text("Hello", 
            // style: TextStyle(
            //   fontSize: 30,
            //   fontWeight: FontWeight.w500
            //   ),
            // ),
          ),
        )
      )
    );
  }
}
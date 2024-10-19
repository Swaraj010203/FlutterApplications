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
            title: const Text("First Question"),
            centerTitle: true,
            backgroundColor: Colors.blue,
            flexibleSpace:const Align(alignment: Alignment.centerRight,
            child: Column(
              children: [
                 Icon(Icons.face),
            Icon(Icons.forward)
              ],
            )),
            // icon()
            
          ),
        )
      )
    );

  }
}
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
          home: 
          Scaffold( 
            appBar:AppBar( 
              title:const Text("Column Scenarios"),
              backgroundColor: Colors.blue,
              centerTitle: true,
            ),
            body:Container( 
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.amber,
                  )
                ],),
            )
          )
        )
      );

  }
}

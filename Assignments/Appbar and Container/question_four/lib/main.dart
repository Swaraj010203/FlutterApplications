import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
           body: Container( 
            width: MediaQuery.of(context).size.height,
            child: Column( 
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [ 
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
                Container( 
                  height: 100,
                  width: 100,
                  color:Colors.red
                )
              ],
            ),
           )
          ),
    );
  }
}
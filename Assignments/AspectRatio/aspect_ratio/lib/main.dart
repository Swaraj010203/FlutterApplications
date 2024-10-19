import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override   
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context){
    return 
      MaterialApp(
        home:Scaffold(  
          appBar: AppBar(
            title: const Text("Aspect Ratio",
            style: TextStyle( 
              fontSize: 30,
              color: Colors.blue
            ),
            ),
          ),
          body: Center( 
            child: Container( 
              height: 300,
              width: 300,
              color: Colors.amber,
              child: Image.network("https://images.pexels.com/photos/4021773/pexels-photo-4021773.jpeg?cs=srgb&dl=pexels-karolina-grabowska-4021773.jpg&fm=jpg"),
            ),
          ),
        ),
      );
  }
}
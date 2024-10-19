// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text('Hello World!'),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget{

  const Myapp({super.key});

  @override
  Widget build(BuildContext context){
    return (
      MaterialApp(
        debugShowCheckedModeBanner:false,
        home:Scaffold(
          appBar:AppBar(
            title:const Text("My App"),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body:const Center(
            child:Text("Hello World")
          )
        )
      )
    );
  }
}














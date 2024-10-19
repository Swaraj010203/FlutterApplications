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
        home: Scaffold( 
          appBar: AppBar(
            title:const Text("Column Scroll"),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          body: Center(
            child: SingleChildScrollView(
            child:Column( 
              children: [ 
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMcF3QSUdjHWDk3r-weV5-zhh40IKeIfAq2g&s"),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMcF3QSUdjHWDk3r-weV5-zhh40IKeIfAq2g&s"),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMcF3QSUdjHWDk3r-weV5-zhh40IKeIfAq2g&s"),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
              ],
            ) ,),
          )
        ),
      )
    );
  }
}
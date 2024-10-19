import 'package:flutter/material.dart';

void main(){
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget{
  const CounterApp({super.key});

  @override 
  State createState() => _CounterAppState();

}

class _CounterAppState extends State{
  int count=0;
  Widget build(BuildContext context){
    return (
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
          appBar:AppBar(
            title:const Text("Counter App"),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body:Center(
            child:Text("$count"),
          ),
          floatingActionButton: FloatingActionButton(
            child: const Text("+"),
            onPressed: (){
            count++;
            setState(() {});
          }),
        )
      )
    );
  }
}
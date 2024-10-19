import 'package:flutter/material.dart';

void main(){
  runApp(const ColorChange());
}

class ColorChange extends StatefulWidget{
  const ColorChange({super.key});

  @override
  State<ColorChange> createState() => _ColorChangeState();
}

class _ColorChangeState extends State<ColorChange>{
  bool colorFlag=true;
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar: AppBar(
          title: const Text("Color-change App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child: Container(
            height: 100,
            width: 100,
            color: (colorFlag==true)?Colors.amber:Colors.black,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child:const Text("Toggle")
          ,onPressed: (){
          colorFlag=!colorFlag;
          setState(() {});
        }),
      )
    );
  }
}
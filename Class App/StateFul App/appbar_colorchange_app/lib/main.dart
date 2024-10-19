import 'package:flutter/material.dart';

void main(){
  runApp(const AppbarColorChange());
}

class AppbarColorChange extends StatefulWidget{
  const AppbarColorChange({super.key});

  @override
  _AppbarColorChangeState createState() => _AppbarColorChangeState();
}

class _AppbarColorChangeState extends State{
  var flag=true;
  @override 
  Widget build(BuildContext context){
    return (
      MaterialApp(
        debugShowCheckedModeBanner:false,
        home:Scaffold(   
          appBar:AppBar(
            title:const Text("AppBar color change"), 
            centerTitle: true,
            backgroundColor: (flag==true)?Colors.blue : Colors.amber,
          ),
          body:Center( 
            child: Container( 
              height: 100,
              width: 100,
              color:(flag==true)?Colors.amber : Colors.blue,
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child:Container(
              height: 50,
              width: 50,
              color: Colors.red,
              child:const Text("ToggleColor",style: TextStyle(color:Colors.white),
              ),
            ),
            onPressed: (){
            flag = !flag;
            setState(() {
              
            });
          }),
        ),
      )
    );
  }
}
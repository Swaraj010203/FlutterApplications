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
        debugShowCheckedModeBanner: false,
        home:Scaffold(
          body:Center(
            child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Container(
                width: 200,
                height: 200,
                color:Colors.orange,
              ),
              Container(
                height:200,
                width:200,
                color: Colors.amber,
              ),
               Container(
                height: 200,
                width: 200,
                color: Colors.green,
               )             
            ],
          )
          )
        )
      )
    );
  }
}
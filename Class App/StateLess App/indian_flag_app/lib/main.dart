import "package:flutter/material.dart";

void main(){
  runApp(const indianFlag());
}

class indianFlag extends StatelessWidget{
  const indianFlag({super.key});

  @override
  Widget build(BuildContext context){
    return (
      MaterialApp(
        debugShowCheckedModeBanner:false,
        home:Scaffold(
          body:
          // SizedBox(),
          Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Container(
                height:50,
                width:300,
                color: Colors.orange,
              ),
              Container(
                height:50,
                width:300,
                color: Colors.white,
                child:Image.network("https://static.vecteezy.com/system/resources/previews/019/766/253/non_2x/ashok-chakra-logo-ashok-chakra-icon-transparent-free-png.png")
              ),
              Container(
                height:50,
                width:300,
                color: Colors.green,
              ),
            ]
          )),
        
        )
      )
    );
  }
}
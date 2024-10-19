import 'package:flutter/material.dart';

void main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override      
  Widget build(BuildContext context){
    return 
      MaterialApp( 
        debugShowCheckedModeBanner:false,
        home:Scaffold( 
          appBar: AppBar(
            title: const Text("Static List View"),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          body:ListView( 
            children: [ 
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRxBcrp6yc1COxx0I9woHZJ-2Tm3dDuFwReIQ96o17GCxideyiPGVuUTZCnwrp5Jo9pgY&usqp=CAU",
              height: 300,
              width: 50,),
              const Icon( 
                Icons.favorite,
              ),
              const Text( 
                "Bhari",
                textAlign: TextAlign.center,
                style: TextStyle( 
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE52r_f2sS3xw_gRQmM8f9MN18kYr3DH-Nl1yYoG-8n4F_h6I4x2W8K6tqHRcle5VT7jg&usqp=CAU"),
              GestureDetector( 
                onTap: (){
                  print("Button Pressed");
                } ,
                child: Container(
                  height: 50,
                  color: Colors.amber,
                  child:const Text("Press Me"),
                ),
              )
            ],
          ),
        ),
      );
 
  }
}	
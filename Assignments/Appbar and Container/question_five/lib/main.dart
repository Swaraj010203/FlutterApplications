import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override       
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(     
        body:Center( 
          child: Column(
            children: [
            Image.network("https://pbs.twimg.com/profile_images/1519690448867971072/n74nZ4L7_400x400.jpg",height: 150,width: 150,),
            const SizedBox( 
              height: 20,
            ),
            Image.network("https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_800,q_50/lsci/db/PICTURES/CMS/361100/361170.jpg",height: 150,width: 150),
            const SizedBox( 
              height: 20,
            ),
            Image.network("https://pbs.twimg.com/profile_images/1741467102719127552/yW6JaRPy_400x400.jpg",height: 150,width: 150,)
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override   
  Widget build(BuildContext context){
    return MaterialApp( 
      home:Scaffold( 
        body:SingleChildScrollView(
          scrollDirection: Axis.horizontal, 
          child:Row(
          children: [
            Image.network("https://pbs.twimg.com/profile_images/1741467102719127552/yW6JaRPy_400x400.jpg",height:300,width: 150,),
            const SizedBox(
              width: 5,
            ),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFWcAMd8M8P_LlIxUb15Zc_pk77YRRS-PvBF9O0k8Jjp7Ls68YSSzkZQfmPxR040cKsXA&usqp=CAU",height:300,width: 150,),
            const SizedBox(
              width: 5,
            ),
            Image.network("https://rukminim2.flixcart.com/image/850/1000/xif0q/poster/x/c/g/medium-indian-criketer-virat-kohli-hd-wallpaper-on-fine-art-original-imah34ve5nfbt4gh.jpeg?q=90&crop=false",height:300,width: 150,),
            const SizedBox(
              width: 5,
            ),
            Image.network("https://pbs.twimg.com/profile_images/1741467102719127552/yW6JaRPy_400x400.jpg",height:300,width: 150,),
            const SizedBox(
              width: 5,
            ),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFWcAMd8M8P_LlIxUb15Zc_pk77YRRS-PvBF9O0k8Jjp7Ls68YSSzkZQfmPxR040cKsXA&usqp=CAU",height:300,width: 150,),
            
            const SizedBox(
              width: 5,
            ),Image.network("https://pbs.twimg.com/profile_images/1741467102719127552/yW6JaRPy_400x400.jpg",height:300,width: 150,),
            const SizedBox(
              width: 5,
            ),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFWcAMd8M8P_LlIxUb15Zc_pk77YRRS-PvBF9O0k8Jjp7Ls68YSSzkZQfmPxR040cKsXA&usqp=CAU",height:300,width: 150,),
            const SizedBox(
              width: 5,
            ),
            Image.network("https://rukminim2.flixcart.com/image/850/1000/xif0q/poster/x/c/g/medium-indian-criketer-virat-kohli-hd-wallpaper-on-fine-art-original-imah34ve5nfbt4gh.jpeg?q=90&crop=false",height:300,width: 150,),
            const SizedBox(
              width: 5,
            ),
            Image.network("https://pbs.twimg.com/profile_images/1741467102719127552/yW6JaRPy_400x400.jpg",height:300,width: 150,),
            const SizedBox(
              width: 5,
            ),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFWcAMd8M8P_LlIxUb15Zc_pk77YRRS-PvBF9O0k8Jjp7Ls68YSSzkZQfmPxR040cKsXA&usqp=CAU",height:300,width: 150,),
          ],
        )
        )
      ),
    );
  }
}
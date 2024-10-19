import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override    
  Widget build(BuildContext context){
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: AppBar( 
          title: const Text("Netflix Demo"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body:ListView.builder( 
          itemCount: 30,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context,int index){
            return  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Action Movies",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row( 
                    children: [ 
                      Container( 
                        padding:const EdgeInsets.all(15),
                        height: 300,
                        width: 200,
                        child: Image.network("https://images.squarespace-cdn.com/content/v1/5c1f65fd697a98b026860fd6/1545564118932-GXDAPJA08086DWTA2WB4/ManFromNowhere2D.jpg"),
                      ),
                      Container( 
                        padding:const EdgeInsets.all(15),
                        height: 300,
                        width: 200,
                        child: Image.network("https://images.squarespace-cdn.com/content/v1/5c1f65fd697a98b026860fd6/1545564118932-GXDAPJA08086DWTA2WB4/ManFromNowhere2D.jpg"),
                      ),
                      Container( 
                        padding:const EdgeInsets.all(15),
                        height: 300,
                        width: 200,
                        child: Image.network("https://images.squarespace-cdn.com/content/v1/5c1f65fd697a98b026860fd6/1545564118932-GXDAPJA08086DWTA2WB4/ManFromNowhere2D.jpg"),
                      ),
                      Container( 
                        padding:const EdgeInsets.all(15),
                        height: 300,
                        width: 200,
                        child: Image.network("https://images.squarespace-cdn.com/content/v1/5c1f65fd697a98b026860fd6/1545564118932-GXDAPJA08086DWTA2WB4/ManFromNowhere2D.jpg"),
                      ),
                      Container( 
                        padding:const EdgeInsets.all(15),
                        height: 300,
                        width: 200,
                        child: Image.network("https://images.squarespace-cdn.com/content/v1/5c1f65fd697a98b026860fd6/1545564118932-GXDAPJA08086DWTA2WB4/ManFromNowhere2D.jpg"),
                      ),
                      Container( 
                        padding:const EdgeInsets.all(15),
                        height: 300,
                        width: 200,
                        child: Image.network("https://images.squarespace-cdn.com/content/v1/5c1f65fd697a98b026860fd6/1545564118932-GXDAPJA08086DWTA2WB4/ManFromNowhere2D.jpg"),
                      ),
                      Container( 
                        padding:const EdgeInsets.all(15),
                        height: 300,
                        width: 200,
                        child: Image.network("https://images.squarespace-cdn.com/content/v1/5c1f65fd697a98b026860fd6/1545564118932-GXDAPJA08086DWTA2WB4/ManFromNowhere2D.jpg"),
                      ),
                      Container( 
                        padding:const EdgeInsets.all(15),
                        height: 300,
                        width: 200,
                        child: Image.network("https://images.squarespace-cdn.com/content/v1/5c1f65fd697a98b026860fd6/1545564118932-GXDAPJA08086DWTA2WB4/ManFromNowhere2D.jpg"),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        )
      ),
    );
  }
}
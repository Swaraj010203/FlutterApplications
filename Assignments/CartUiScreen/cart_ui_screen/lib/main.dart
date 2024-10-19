import 'package:flutter/material.dart';

void main(){
  runApp(const myApp());
}

class myApp extends StatefulWidget{
  const myApp({super.key});

  @override  
  State createState() => _myAppState();
}

class _myAppState extends State{

  var number=1;

  @override
  Widget build(BuildContext context){
    return ( 
      MaterialApp(
        debugShowCheckedModeBanner:false,
        home:Scaffold(  
          appBar:AppBar(  
            title:const Text( 
              "Shoes",
            ),
            actions: const [
              Icon(Icons.shopping_cart)
            ],

          ),
          body:Column( 
            children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 400,
                width: 400,
                child: Image.network("https://media.istockphoto.com/id/1350560575/photo/pair-of-blue-running-sneakers-on-white-background-isolated.jpg?s=612x612&w=0&k=20&c=A3w_a9q3Gz-tWkQL6K00xu7UHdN5LLZefzPDp-wNkSU=",fit: BoxFit.cover,
              ),),
              Container(  
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.all(18),
                child: const Text("Nike Air Force1 '07 ",style:TextStyle(fontWeight: FontWeight.bold,
                fontSize: 23) ,)
              ),
              Row( 
                children: [ 
                   Container(  
                  alignment: Alignment.center,
                    color: Colors.purple,
                    margin:const EdgeInsets.all(18),
                    height: 30,
                    width: 70,
                    child: const Text("Shoes",
                    style:TextStyle( 
                      color: Colors.white,
                    )
                    ),
                  ),
                  const SizedBox( 
                    width: 5,
                  ),
                  Container( 
                  alignment: Alignment.center,
                    color: Colors.purple,
                    height: 30,
                    width: 70,
                    margin:const EdgeInsets.all(8) ,
                    child: const Text("Shoes",
                    style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox( 
                    height: 5,
                  ),
              Container(
                margin:const EdgeInsets.only(left: 12.0,right: 10),
                child: const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
              ),
              ),
                const SizedBox( 
                    height: 25,
                  ),
              Row(
                children: [
                  Container( 
                     margin:const EdgeInsets.all(12) ,
                    child: const Text("Quantity",
                    style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  const SizedBox( 
                    width: 5,
                  ),
                  Container(
                     child:GestureDetector( 
                    onTap: ()=>{
                      number++,
                      setState(() {
                        
                      }),
                    },
                    child:const Icon(Icons.add)
                  ),

                  ),
                  const SizedBox( 
                    width: 5,
                  ),
                  Container( 
                    alignment: Alignment.center,
                     margin:const EdgeInsets.all(8) ,
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width:1.0,
                        color: Colors.black
                      )
                    ),
                    child: Text("$number",
                    style:const TextStyle( 
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
              
                  ),
                  const SizedBox( 
                    width: 10,
                  ),
                  GestureDetector( 
                    onTap: ()=>{
                      number--,
                      setState(() {
                      
                      }),
                    },
                    child:const Icon(Icons.remove)
                  ),
                ],),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: (){}, 
                style:const  ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue),
                ),
                child:Container( 
                  alignment: Alignment.center,
                  height: 50,
                  width: 300,
                  child:const Text("Purchase"
                  ,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                    ,color: Colors.white
                  ),)
                ))
              
            ],
          )
        )
      )
    );
  }
}
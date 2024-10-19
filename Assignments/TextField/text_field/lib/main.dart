import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override   
  State<MyApp> createState() =>  _MyAppState();
}

class _MyAppState extends State<MyApp>{

  @override     
  Widget build(BuildContext context){
    TextEditingController nameController =TextEditingController();
    String? myName;

    return ( 
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar( 
            title: const Text("TextField Demo", 
            style: TextStyle(fontSize: 30),),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Column( 
            children: [
               const SizedBox( 
                height: 20,
              ),
              Padding(
                padding:const EdgeInsets.all(20.0),
                child: TextField( 
                  controller: nameController,
                  style:const TextStyle( 
                    fontSize: 30,
                  ),
                  obscureText: true,
                  decoration: const InputDecoration( 
                    suffixIcon: Icon(Icons.visibility),
                    hintText: "Enter your name",
                    hintStyle: TextStyle(
                      fontSize: 25,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String val){
                    print("Value : $val");
                  },
                  onEditingComplete: (){},
                  onSubmitted: (value){
                    print("Value submitted : $value");
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  print("Add data");
                  myName=nameController.text;
                  print("my name $myName");
                  nameController.clear();
                  setState(() {});
                  
                },
                child: Container( 
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration( 
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "Add Data",
                    style: TextStyle( 
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Name : $myName",
                style: const TextStyle(
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      )
    );
  } 
}

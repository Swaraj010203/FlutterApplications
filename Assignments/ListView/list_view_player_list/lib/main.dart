import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  @override  
  Widget build(BuildContext context){
    TextEditingController nameController=TextEditingController();
    String? myName;
    List<String>playerList=[];
    return (
      MaterialApp(
        home: Scaffold(
          appBar:AppBar(
            title: const Text("Textfield List Demo",
            style: TextStyle(
              fontSize: 30,
            ),),
          ) ,
          body:Column(   
            children: [ 
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:const EdgeInsets.all(20.0),
                child:TextField(
                  controller: nameController,
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                  decoration: const InputDecoration( 
                    hintText: "Enter Name",
                    hintStyle: TextStyle(
                      fontSize: 25,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String val){
                    print("Value ${val}");
                  },
                  onEditingComplete: (){
                    print("Editing Complete");
                  },
                  onSubmitted: (value){
                    print("Value submitted $value");
                  },
                ) ,
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector( 
                  onTap: (){
                    print("Add Data");
                    myName=nameController.text.trim();
                    print("My Name : $myName");
                    if(myName != ""){
                      playerList.add(myName!);
                      print("PlayerList Length : ${playerList.length}");
                      nameController.clear();
                      setState(() {});
                    }
                  },
                  child: Container( 
                    padding:const EdgeInsets.symmetric( 
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
                ListView.builder(
                  itemCount: playerList.length,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return Text(
                      "Name : ${playerList[index]}",
                      style:const TextStyle( 
                        fontSize: 25,
                      ),
                    );
                  },
                )
            ],
          ),
          ),
      )
    );
  }
}
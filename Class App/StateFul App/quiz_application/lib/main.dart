import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

// ignore: camel_case_types
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  int currentQuestionIndex = 0;
  int selectedIndex = -1;
  bool isQuestionPage = true;
  int scoreCount=0;

  // ignore: non_constant_identifier_names
  List<Map> QuestionList = [
    {
      "question": "Who invented the World Wide Web?",
      "options": [
        "Tim Berners-Lee",
        "Bill Gates",
        "Mark Zukerberg",
        "Steve Jobs"
      ],
      "answer": 0,
    },
    {
      "question": "Who is the founder of microsoft?",
      "options": ["Bill Gates", "Steve Jobs", "Casper Lund", "Elon Musk"],
      "answer": 0,
    },
    {
      "question": "What is the capital of France?",
      "options": ["Berlin", "Madrid", "Paris", "Rome"],
      "answer": 2,
    },
    {
      "question": "Which planet is known as the Red Planet?",
      "options": ["Mars", "Venus", "Jupiter", "Saturn"],
      "answer": 0,
    },
    {
      "question": "What is the chemical symbol for water?",
      "options": ["O2", "H2O", "CO2", "H2"],
      "answer": 1,
    },
  ];

  WidgetStateProperty<Color?> fillColor(int index) {
    if (selectedIndex == -1) {
      return const WidgetStatePropertyAll(Colors.white);
    } else if (index == QuestionList[currentQuestionIndex]['answer']) {
      return const WidgetStatePropertyAll(Colors.green);
    } else if (index == selectedIndex) {
      return const WidgetStatePropertyAll(Colors.red); // Selected but incorrect
    }
    return const WidgetStatePropertyAll(Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen() {
    if (isQuestionPage == true) {
      return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Quiz App",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
          ),
          body: Container(
            color: Colors.black87,
            child: Column(children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 135,
                  ),
                  Text(
                    "Questions : ${currentQuestionIndex + 1} / ${QuestionList.length}",
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
                child: Text(QuestionList[currentQuestionIndex]["question"],
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.white)),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: fillColor(0)),
                    onPressed: () {
                      selectedIndex = 0;
                      if(QuestionList[currentQuestionIndex]["answer"]==0){
                           scoreCount++;
                      }
                      setState(() {});
                    },
                    child: Text(
                        "${QuestionList[currentQuestionIndex]["options"][0]}",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        )),
                  )),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: fillColor(1)),
                  onPressed: () {
                    selectedIndex = 1;
                    if(QuestionList[currentQuestionIndex]["answer"]==1){
                           scoreCount++;
                      }
                    setState(() {});
                  },
                  child: Text(
                    " ${QuestionList[currentQuestionIndex]["options"][1]}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ), //text
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: fillColor(2)),
                  onPressed: () {
                    selectedIndex = 2;
                    if(QuestionList[currentQuestionIndex]["answer"]==2){
                           scoreCount++;
                      }
                    setState(() {});
                  },
                  child: Text(
                      " ${QuestionList[currentQuestionIndex]["options"][2]}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )), //text
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: fillColor(3)),
                  onPressed: () {
                    selectedIndex = 3;
                    if(QuestionList[currentQuestionIndex]["answer"]==3){
                           scoreCount++;
                      }
                    setState(() {});
                  },
                  child: Text(
                      " ${QuestionList[currentQuestionIndex]["options"][3]}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )), //text
                ),
              ),
            ]),
          ),
          floatingActionButton: SizedBox(
            height: 50,
            width: 80,
            child: FloatingActionButton(
                onPressed: () {
                  if (selectedIndex != -1 &&
                      currentQuestionIndex < QuestionList.length - 1) {
                    currentQuestionIndex++;
                    setState(() {});
                    selectedIndex = -1;
                  }else{
                    isQuestionPage=false;
                    setState(() {});
                  }
                },
                backgroundColor: Colors.white,
                child: (currentQuestionIndex < QuestionList.length - 1)
                    ? const Icon(
                        Icons.arrow_forward,
                        size: 30,
                      )
                    : const Text(
                        "Submit",
                        style:  TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
          ));
    } else{
      return Scaffold(
        appBar: AppBar( 
          title: const Text(
              "Quiz Result",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
        ),
        body:Center(
          child:Container( 
            color:Colors.black87,
            child:Column(
            children: [
              const SizedBox( 
                height: 120,
              ),
              Image.network("https://static.vecteezy.com/system/resources/thumbnails/032/999/982/small_2x/realistic-golden-trophy-ai-generative-free-png.png", height: 400,),
              const SizedBox( 
                height: 50,
              ),
              Text(
              "Your Score : $scoreCount",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            const SizedBox( 
                height: 50,
              ),
               SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(onPressed: (){
                  isQuestionPage=true;
                  selectedIndex=-1;
                  currentQuestionIndex=0;
                  scoreCount=0;
                  setState(() {});
                },
                child: const Text(
                      "Reset",
                      style:  TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),),
              ),
            ]
          ),
          ),
        ),
      
      );
    }
  }
}

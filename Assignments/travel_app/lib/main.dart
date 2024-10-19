import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
bool flag=true;

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<Map<String, String>> TravelInfo = [
    {"country": "India", "city": "Mumbai", "rating": "4.5", "price": "100"},
    {"country": "India", "city": "Delhi", "rating": "4.8", "price": "200"},
    {"country": "India", "city": "Bangalore", "rating": "4.2", "price": "150"},
    {"country": "India", "city": "Pune", "rating": "4.7", "price": "80"},
    {"country": "India", "city": "Chennai", "rating": "4.3", "price": "120"}
  ];

  List<Map<String, String>> PopularInfo = [
  {"country": "India", "city": "Mumbai", "rating": "4.5", "number_of_ratings": "500"},
  {"country": "India", "city": "Delhi", "rating": "4.8", "number_of_ratings": "1000"},
  {"country": "India", "city": "Bangalore", "rating": "4.2", "number_of_ratings": "300"},
  {"country": "India", "city": "Pune", "rating": "4.7", "number_of_ratings": "600"},
  {"country": "India", "city": "Chennai", "rating": "4.3", "number_of_ratings": "400"}
];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:(flag)? Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(27, 48, 101, 1),
          title: const Text(
            "Where do you want to travel?",
            style: TextStyle(
              height: 15,
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          height: 41,
                          width: 253,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(233, 237, 248, 1),
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 64),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Text("Select Destination",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(2, 111, 249, 1))),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const SizedBox(
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Color.fromRGBO(52, 111, 249, 1),
                                ),
                              )
                            ],
                          )),
                      Container(
                        height: 41,
                        width: 41,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(52, 111, 249, 1)),
                        child: const Icon(
                          Icons.search,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 41,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 22),
                          child: const Text(
                            "Best Deals",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 22),
                          child: const Text(
                            "Sorted by lower price",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color.fromRGBO(179, 182, 187, 1),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 155,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (BuildContext context, int index) {
                                return TravelCard(travelData: TravelInfo[index]);
                              }),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 22),
                          child: const Text(
                            "Popular Destinations",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 22),
                          child: const Text(
                            "Sorted by highest rating",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color.fromRGBO(179, 182, 187, 1),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),
                        
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (BuildContext context, int index) {
                                return PopularPlaces(popularPlace: PopularInfo[index]);
                              }),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 22),
                          child: const Text(
                            "Best Deals",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 22),
                          child: const Text(
                            "Sorted by lower price",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color.fromRGBO(179, 182, 187, 1),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 155,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (BuildContext context, int index) {
                                return TravelCard(travelData: TravelInfo[index]);
                              }),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 22),
                          child: const Text(
                            "Popular Destinations",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 22),
                          child: const Text(
                            "Sorted by highest rating",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color.fromRGBO(179, 182, 187, 1),
                            ),
                          ),
                        ),
                        
                        const SizedBox(
                          height: 20,
                        ),
                        
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (BuildContext context, int index) {
                                return PopularPlaces(popularPlace: PopularInfo[index]);
                              }),
                        ),
                      ],
                    ),
                  ),



                ],
              ),
            ),
          ),
        ),
      ):const MoreInfoPage(),
    
    
    
    );
  }
}

// ignore: must_be_immutable
class TravelCard extends StatelessWidget {
  Map<String, String> travelData;

  TravelCard({super.key, required this.travelData});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 22),
        height: 160,
        width: 145,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromRGBO(233, 237, 248, 1)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            height: 114,
            width: 114,
            color: const Color.fromRGBO(233, 237, 248, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${travelData["city"]}",
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 12),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          height: 5,
                          // width: 11,
                          child: Icon(
                            Icons.star,
                            color: Color.fromRGBO(228, 161, 2, 1),
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          "${travelData["rating"]}",
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: Color.fromRGBO(228, 161, 2, 1)),
                        )
                      ],
                    )
                  ],
                ),
                Text(
                  "${travelData["country"]}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                    color: Color.fromRGBO(179, 182, 187, 1),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 35, top: 20),
                  height: 24.5,
                  width: 46.5,
                  child: Image.network(
                      "https://static.vecteezy.com/system/resources/previews/010/994/239/non_2x/adidas-logo-black-symbol-clothes-design-icon-abstract-football-illustration-with-white-background-free-vector.jpg"),
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 26,
                      width: 47,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: GestureDetector( 
                        onTap: (){
                          flag=!flag;
                          print("button tapped");
                        },
                        child:const Text(
                        "More",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 10,
                          color: Color.fromRGBO(52, 111, 249, 1),
                        ),
                      ),
                      )
                      // margin: EdgeInsets.only(top: )
                    ),
                    Container(
                      height: 26,
                      width: 47,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(52, 111, 249, 1),
                      ),
                      child: Text(
                        "Rs. ${travelData["price"]}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                      // margin: EdgeInsets.only(top: )
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

// ignore: must_be_immutable
class PopularPlaces extends StatelessWidget{
  Map<String,String>popularPlace;

  PopularPlaces({super.key,required this.popularPlace});

  @override  
  Widget build(BuildContext context){
    return Container(
                        margin: const EdgeInsets.only(left: 22),
                        height: 200,
                        width: 145,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 145,
                              width: 145,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: const Color.fromRGBO(233, 237, 248, 1),
                              ),
                              child: SizedBox(
                                height: 24.5,
                                width: 46.5,
                                child: Image.network(
                                    "https://static.vecteezy.com/system/resources/previews/010/994/239/non_2x/adidas-logo-black-symbol-clothes-design-icon-abstract-football-illustration-with-white-background-free-vector.jpg"),
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "${popularPlace["city"]}",
                                  style:const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      height: 11,
                                      width: 11,
                                      child: Icon(
                                        Icons.star,
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "${popularPlace["rating"]}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11,
                                          color:
                                              Color.fromRGBO(228, 161, 2, 1)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                                  height: 8,
                                ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "${popularPlace["country"]}",
                                  style:const TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 10,
                                      color: Color.fromRGBO(179, 182, 187, 1)
                                      ),
                                ),
                                Text(
                                      "${popularPlace["number_of_ratings"]} Reviews",
                                      style:const TextStyle(
                                          fontWeight: FontWeight.w500, fontSize: 10,
                                      color: Color.fromRGBO(179, 182, 187, 1)),
                                    )
                              ],
                              )
                          ],
                        ),
                      );    
  }
}

class MoreInfoPage extends StatelessWidget {
  const MoreInfoPage({super.key});

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 90,
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(27, 48, 101, 1),
          title: const Text(
            "Where do you want to travel?",
            style: TextStyle(
              height: 15,
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
    );
  }
}
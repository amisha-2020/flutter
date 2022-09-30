import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //for scrollable list
  List data = [
    {
      "image":
          "https://images.pexels.com/photos/4992807/pexels-photo-4992807.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Scenery",
      "likes": 298
    },
    {
      "image":
          "https://images.pexels.com/photos/5987178/pexels-photo-5987178.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Flower",
      "likes": 298
    },
    {
      "image":
          "https://images.pexels.com/photos/4553373/pexels-photo-4553373.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Roman",
      "likes": 298
    },
    {
      "image":
          "https://images.pexels.com/photos/5876822/pexels-photo-5876822.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Leaves",
      "likes": 298
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
        drawer: Drawer(
          child: Column(
            children: const [
              Text("Home"),
              Text("Dashboard"),
            ],
          ),
        ),
        body: ListView.builder(
          //scrolabale list
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(50),
              height: 600,
              //color: Colors.black12,
              child: Column(
                children: [
                  Image.network(data[index]["image"]),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        data[index]["name"],
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.favorite),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            data[index]["likes"].toString(),
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w200),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.comment),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

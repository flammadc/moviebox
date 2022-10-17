import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _myAppState();
}

class _myAppState extends State<MyApp> {
  final List<Map> movies = [
    {"title": "Black Widow", "rating": 8},
    {"title": "Captain America", "rating": 9},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: Text("Movie Box"),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          titleTextStyle: TextStyle(
              fontSize: 32, color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(18, 14, 18, 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Now Playing",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 12,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: <Widget>[
                    Column(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Image.network(
                              "https://lumiere-a.akamaihd.net/v1/images/p_blackwidow_21043_v2_6d1b73b8.jpeg"),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Black Widow",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Image.network(
                              "https://lumiere-a.akamaihd.net/v1/images/p_blackwidow_21043_v2_6d1b73b8.jpeg"),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Black Widow",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Image.network(
                              "https://lumiere-a.akamaihd.net/v1/images/p_blackwidow_21043_v2_6d1b73b8.jpeg"),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Black Widow",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ]))
            ],
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.home), label: Text("Home")),
        //   ],
        // ),
      ),
    );
  }
}

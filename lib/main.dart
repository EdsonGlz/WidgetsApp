import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  Color color1 = Colors.black;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(24),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.account_circle_sharp,
                                size: 40,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Flutter McFlutter',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 23),
                              ),
                              Text(
                                'Experienced app developer',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                                margin: EdgeInsets.only(left: 10, top: 20),
                                child: Text("123 Main Street")),
                          ),
                          Expanded(
                            child: Container(
                                margin: EdgeInsets.only(right: 10, top: 20),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("(415) 555-0198"))),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                                onPressed: () {
                                  if (color1 == Colors.black) {
                                    color1 = Colors.red;
                                  } else {
                                    color1 = Colors.black;
                                  }
                                },
                                icon: Icon(
                                  Icons.accessibility,
                                  color: color1,
                                )),
                            IconButton(
                                onPressed: () {
                                  if (color1 == Colors.black) {
                                    color1 = Colors.red;
                                  } else {
                                    color1 = Colors.black;
                                  }
                                },
                                icon: Icon(
                                  Icons.timer_rounded,
                                  color: color1,
                                )),
                            Icon(Icons.phone_android),
                            Icon(Icons.phone_iphone)
                          ],
                        ),
                      )
                    ],
                  ),
                  height: 150,
                ),
              ),
            ],
          )),
    );
  }
}

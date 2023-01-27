import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool tap_acc = false;
  bool timer = false;
  bool and_phone = false;
  bool iphone = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Mc Flutter'),
          ),
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.only(top: 10.0),
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
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                                onPressed: () {
                                  tap_acc = !tap_acc;
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.accessibility,
                                  color:
                                      tap_acc ? Colors.indigo : Colors.black54,
                                )),
                            IconButton(
                                onPressed: () {
                                  timer = !timer;
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.timer_rounded,
                                  color: timer ? Colors.indigo : Colors.black54,
                                )),
                            IconButton(
                                onPressed: () {
                                  and_phone = !and_phone;
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.phone_android,
                                  color: and_phone
                                      ? Colors.indigo
                                      : Colors.black54,
                                )),
                            IconButton(
                                onPressed: () {
                                  iphone = !iphone;
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.phone_iphone,
                                  color:
                                      iphone ? Colors.indigo : Colors.black54,
                                ))
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

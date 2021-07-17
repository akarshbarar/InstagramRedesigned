import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 0) {
                        return Padding(
                          padding: EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            radius: 43,
                            child: Icon(Icons.add),
                          ),
                        );
                      }
                      return Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 43.0,
                            child: CircleAvatar(
                              radius: 40.0,
                              child: ClipOval(
                                child: Image.network(
                                  "https://picsum.photos/seed/692/600",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ));
                    })),
            Expanded(
                flex: 7,
                child: ListView.builder(
                    itemCount: 200,
                    itemBuilder: (BuildContext contex, int i) {
                      return Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40.0),
                            topLeft: Radius.circular(40.0),
                          ),
                          color: Colors.black,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          children: [
                            Image.network(
                              "https://picsum.photos/seed/901/600",
                              height: 500,
                              width: 500,
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                                top: 15.0,
                                left: 15.0,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      child: FlutterLogo(),
                                      radius: 15,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Name",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )),
                            Positioned(
                                bottom: 15,
                                left: 15,
                                child: Row(
                                  children: [
                                    Icon(Icons.thumb_up),
                                    Text("123",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.message),
                                    Text("123",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.send),
                                  ],
                                )),
                            Positioned(
                                bottom: 15.0,
                                right: 15.0,
                                child: Icon(Icons.save_alt))
                          ],
                        ),
                      );
                    })),
          ],
        ));
  }
}

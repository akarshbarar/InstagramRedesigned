import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildChip(Widget w, String label) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
      child: Chip(
        labelPadding: EdgeInsets.all(2.0),
        avatar: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: w,
        ),
        label: Text(
          label,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey.withOpacity(0.1),
        elevation: 6.0,
        shadowColor: Colors.grey[60],
        padding: EdgeInsets.all(8.0),
      ),
    );
  }

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
                      return GestureDetector(
                        onDoubleTap: () {
                          print("DOUBLE TAPPED ${i}");
                        },
                        child: Container(
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
                                height: 700,
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
                                      _buildChip(
                                          Icon(
                                            Icons.thumb_up,
                                            color: Colors.red,
                                          ),
                                          "124"),
                                      _buildChip(
                                          Icon(
                                            Icons.message,
                                            color: Colors.red,
                                          ),
                                          "124"),
                                      _buildChip(
                                          Icon(
                                            Icons.thumb_up,
                                            color: Colors.red,
                                          ),
                                          "124"),
                                      _buildChip(
                                          Icon(
                                            Icons.send,
                                            color: Colors.red,
                                          ),
                                          ""),
                                    ],
                                  )),
                              Positioned(
                                bottom: 15.0,
                                right: 15.0,
                                child: _buildChip(
                                    Icon(
                                      Icons.save_alt,
                                      color: Colors.red,
                                    ),
                                    ""),
                              )
                            ],
                          ),
                        ),
                      );
                    })),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:instagramredesigned/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram Redesigned",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          accentColor: Colors.black,
          primaryColor: Colors.black,
          iconTheme: IconThemeData(
            color: Colors.white,
          )),
      home: Home(),
    );
  }
}

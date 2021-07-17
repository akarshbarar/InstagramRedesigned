import 'package:flutter/material.dart';
import 'package:instagramredesigned/PAGES/homepage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int id = 0;

  @override
  Widget build(BuildContext context) {
    final tab = <Widget>[
      HomePage(),
      Center(child: Text("Tab 2")),
      Center(child: Text("Tab 3")),
      Center(child: Text("Tab 4")),
      Center(child: Text("Tab 5")),
    ];

    final bnbi = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 30.0,
          ),
          title: Text("")),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            size: 30.0,
          ),
          title: Text("")),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.add_box,
            size: 30.0,
          ),
          title: Text("")),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.thumb_up,
            size: 30.0,
          ),
          title: Text("")),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            size: 30.0,
          ),
          title: Text("")),
    ];

    final bottomnavbar = ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          items: bnbi,
          currentIndex: id,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              id = index;
            });
          },
        ));

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
          elevation: 0,
          title: Text("Instagram"),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.message))],
        ),
        body: tab[id],
        bottomNavigationBar: bottomnavbar,
      ),
    );
  }
}

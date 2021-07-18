import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          "23.6K",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text("Follower")
                      ],
                    ),
                    Image.network(
                      "https://robohash.org/3386fc6170be881c98ce9b4f7c3cee93?set=set4&bgset=&size=400x400",
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                    Column(
                      children: [
                        Text(
                          "48K",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text("Following")
                      ],
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello World",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("|"),
                Text(
                  "Software Developer",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Expanded(flex: 1, child: Text("qwertyuiopp[]\asdfghjkl;'zxcvbnm,./")),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Edit Profile'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      onPrimary: Colors.black,
                      shape: StadiumBorder()),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Statistics'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      onPrimary: Colors.black,
                      shape: StadiumBorder()),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Contact'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      shape: StadiumBorder()),
                )
              ],
            ),
          ),
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
            flex: 5,
            child: DefaultTabController(
              length: 6,
              child: Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  flexibleSpace: TabBar(
                    tabs: [
                      Tab(
                          icon: Icon(
                        Icons.home_filled,
                        color: Colors.black,
                      )),
                      Tab(
                          icon: Icon(
                        Icons.dangerous,
                        color: Colors.black,
                      )),
                      Tab(
                          icon: Icon(
                        Icons.ac_unit,
                        color: Colors.black,
                      )),
                      Tab(
                          icon: Icon(
                        Icons.home_filled,
                        color: Colors.black,
                      )),
                      Tab(
                          icon: Icon(
                        Icons.dangerous,
                        color: Colors.black,
                      )),
                      Tab(
                          icon: Icon(
                        Icons.ac_unit,
                        color: Colors.black,
                      )),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    GridView.count(
                      crossAxisCount: 3,
                      children: List<Widget>.generate(100, (index) {
                        return GridTile(
                          child: Card(
                            color: Colors.blue,
                            child: Center(
                              child: Text("Hiii"),
                            ),
                          ),
                        );
                      }),
                    ),
                    Container(color: Colors.blue),
                    Container(color: Colors.red),
                    Container(color: Colors.yellow),
                    Container(color: Colors.blue),
                    Container(color: Colors.red),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.all_inclusive,
              color: Colors.white,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              "Infinite Laughs",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.pushNamed(context, '/id');
            },
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.deepPurple[900], Colors.indigo, Colors.blue]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome to ",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      )),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Jokes",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          "App",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        )
                      ]),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  elevation: 7.0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/coding');
                    },
                    child: Container(
                        height: 70,
                        width: double.infinity,
                        //padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                        child: Center(
                          child: Text(
                            "Coding Jokes",
                            style: TextStyle(
                              fontSize: 23,
                            ),
                          ),
                        )),
                  )),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  elevation: 7.0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/dark');
                    },
                    child: Container(
                        height: 70,
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                        child: Center(
                          child: Text(
                            "Dark Jokes",
                            style: TextStyle(fontSize: 23),
                          ),
                        )),
                  )),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  elevation: 7.0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/misc');
                    },
                    child: Container(
                        height: 70,
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                        child: Center(
                          child: Text(
                            "Misc Jokes",
                            style: TextStyle(fontSize: 23),
                          ),
                        )),
                  )),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

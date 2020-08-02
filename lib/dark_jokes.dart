import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:jokes_generator/JokeStructure.dart';

class Dark extends StatefulWidget {
  @override
  _DarkState createState() => _DarkState();
}

class _DarkState extends State<Dark> {
  bool _loaded = false;
  Future<CodingJokes> fetchCoding() async {
    var response =
        await get("https://sv443.net/jokeapi/v2/joke/Dark?type=twopart");
    _loaded = true;
    return CodingJokes.fromJson(jsonDecode(response.body));
  }

  Future<CodingJokes> futureJokes;

  getjoke() {
    futureJokes = fetchCoding();
  }

  void initState() {
    super.initState();
    getjoke();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
              width: 6,
            ),
            Text(
              "Infinite Laughs",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.deepPurple[900], Colors.indigo, Colors.blue]),
        ),
        child: Center(
            child: FutureBuilder<CodingJokes>(
                future: futureJokes,
                builder: (context, snapshot) {
                  if (snapshot.hasData)
                    return _loaded
                        ? Container(
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  /*SizedBox(
                                height: 1,
                              ),*/
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      snapshot.data.setup,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 27,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      snapshot.data.delivery,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 22,
                                          color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        : CircularProgressIndicator();
                  return Center(child: CircularProgressIndicator());
                })),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: Icon(
            Icons.refresh,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              _loaded = false;
              getjoke();
            });
          }),
    );
  }
}

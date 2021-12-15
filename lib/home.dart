import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Widget customCard(String languageName) {
  
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        child: Material(
          color: Colors.indigoAccent,
          elevation: 20.0,
          child: Container(
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                    child: ClipOval(
                        child: Image(
                      width: 200.0,
                      height: 200.0,
                      image: AssetImage(
                        "assets/yisafa.jpg",
                      ),
                    )),
                  ),
                ),
                Center(
                  child: Text(
                languageName,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
                Center(
                  // ignore: unnecessary_const
                  child: Text(
                    'This is a Quiz Application',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizzer'),
        leading: const Icon(Icons.menu),
      ),
      body: ListView(
        children: [
          customCard("Python"),
          customCard("java"),
          customCard("C"),
          customCard("Javascript"),
          customCard("C++"),
          customCard("Dart")
        ],
      ),
    );
  }
}

class Circular {}

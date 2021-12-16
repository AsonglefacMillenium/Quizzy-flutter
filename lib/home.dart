import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> images = [
    "assets/python.png",
    "assets/java.jpg",
    "assets/c.png",
    "assets/javascript.png",
    "assets/c++.png",
    "assets/dart.jpg",
  ];
  Widget customCard(String languageName, String image) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        child: Material(
          color: Colors.indigoAccent,
          elevation: 20.0,
          child: SizedBox(
            height: 300.0,
            child: Column(
              children: [
                 Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child:  Material(
                    elevation: 5.0,
                    borderRadius: const BorderRadius.all(Radius.circular(100.0)),
                    child: ClipOval(
                        child: Image(
                          fit: BoxFit.contain,
                      width: 200.0,
                      height: 200.0,
                      image: AssetImage(
                        image,
                      ),
                    )),
                  ),
                ),
                Center(
                  child: Text(
                    languageName,
                    style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
                const Center(
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
          customCard("Python", images[0]),
          customCard("java" ,images[1]),
          customCard("C", images[2]),
          customCard("Javascript", images[3]),
          customCard("C++" ,images[4]),
          customCard("Dart" ,images[5])
        ],
      ),
    );
  }
}

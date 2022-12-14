import 'package:flutter/material.dart';

void main() {
  runApp(const LikeMee());
}

class LikeMee extends StatelessWidget {
  const LikeMee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LIKEMEE",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "LIKE",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                      fontSize: 25),
                ),
                Text(
                  "MEE",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      fontSize: 25),
                ),
              ],
            ),
          ),
          body: const ActionButton()),
    );
  }
}

class ActionButton extends StatefulWidget {
  const ActionButton({super.key});

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  String wordChange = "NO MORE \nLONELY DAYS";
  String imageChange = "assets/images/boy.jpg";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            Image(
            image: AssetImage(imageChange),
            width: 400,
            height: 400,
          ),
          Text(
            wordChange,
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0, top: 80.0),
            child: ElevatedButton(
              onPressed: (() {
                setState(() {
                  wordChange = "WELCOME TO \n MY LIFE";
                });
              }),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                elevation: 0,
                minimumSize: const Size(250, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)),
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontStyle: FontStyle.normal),
              ),
              child: const Text('get started'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0, top: 0.0),
            child: ElevatedButton(
              onPressed: (() {
                setState(() {
              wordChange = "WELCOME LUCAS";
              imageChange = "assets/images/holding.jpg";
          
                });
              }),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 0,
                minimumSize: const Size(250, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)),
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontStyle: FontStyle.normal),
              ),
              child: const Text(
                'login in with email',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


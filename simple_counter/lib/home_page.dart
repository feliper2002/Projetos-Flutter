import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageStates();
  }
}

class HomePageStates extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Contador - By: Felipe'),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: GestureDetector(
        // Detecta ações
        child: Text(
          'Click-me!\nCounter: $counter',
          style: TextStyle(
              color: Colors.green,
              decoration: TextDecoration.none,
              fontSize: 50.0),
        ),
        onTap: () {
          // ao clicar
          setState(() {
            counter++;
          });
        },
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.exposure_zero),
        backgroundColor: Colors.green,
        onPressed: () {
          setState(() {
            counter = 0;
          });
        },
      ),
    );
  }
}

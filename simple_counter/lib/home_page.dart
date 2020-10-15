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
    return Container(
      child: Center(
          child: GestureDetector(
        // Detecta ações
        child: Text(
          'Counter: $counter',
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
    );
  }
}

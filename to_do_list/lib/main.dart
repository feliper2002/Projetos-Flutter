import 'package:flutter/material.dart';
import 'package:to_do_list/screens/todoscreen.dart';

class ToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do List',
      home: ToDoScreen(),
    );
  }
}

void main() {
  runApp(ToDoList());
}

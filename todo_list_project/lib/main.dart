import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_project/pages/home_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ToDoList(),
      title: 'To-Do List',
    );
  }
}

void main() {
  runApp(HomeScreen());
}

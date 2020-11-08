import 'package:flutter/cupertino.dart';

class Task {
  final String name;
  final bool isChecked;
  final DateTime data;

  Task({
    @required this.name,
    @required this.isChecked,
    @required this.data,
  });
}

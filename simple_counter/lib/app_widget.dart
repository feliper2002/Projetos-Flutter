import 'package:flutter/material.dart';
import 'package:simple_counter/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// remove aquele banner de debug (debugShowCheckedModeBanner)
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

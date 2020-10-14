import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// main() {
///   runApp(Container(
///     child: Center(
///       child: Text(
///         'Hello World!',
///         textDirection: TextDirection.ltr,
///         style: TextStyle(
///             color: Colors.blue[300],
///             fontSize: 50.0,
///             fontWeight: FontWeight.w800),
///       ),
///     ),
///   ));
/// }

main() {
  runApp(AppWidget(title: 'Olá Mundo!'));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          title,
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Colors.blue[300],
              fontSize: 50.0,
              fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}

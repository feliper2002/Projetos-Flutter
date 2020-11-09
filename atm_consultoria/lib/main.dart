import 'package:atm_consultoria/pages/atm_home.dart';
import 'package:flutter/material.dart';

class ATMConsultoria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ATM Consultoria',
      home: HomeScreen(),
    );
  }
}

void main() => runApp(ATMConsultoria());

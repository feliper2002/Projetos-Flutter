import 'package:app_despesas_pessoais/screens/expenses.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Despesas Pessoais',
      home: DespesasPessoais(),
    );
  }
}

void main() => runApp(HomeScreen());

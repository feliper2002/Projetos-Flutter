import 'package:flutter/material.dart';
import 'package:frases_do_dia/screens/home.dart';

/* Tipos de Widgets
Stateless --> Widgets que não podem ser alterados (constantes)
Statefil --> Widgets que podem ser alterados (variáveis)
 */

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Frases do Dia',
      //home: Container(color: Colors.white)
      home: HomeStateful()));
}

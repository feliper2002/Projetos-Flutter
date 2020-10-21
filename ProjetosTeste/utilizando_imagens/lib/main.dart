import 'package:flutter/material.dart';

/* 
Criar no arquivo pubspec.yaml :

  assets:
    - 'images/pessoa.png' (claro que aqui será outro diretório)
  (SIM, PRECISA COLOCAR ENTRE ASPAS)

  Isso vai permitir a utilização desse asset (no caso, a imagem) no
  programa.
*/

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Image.asset(
          'images/sword.png',
          fit: BoxFit.cover, // cobre a tela toda SEM DISTORCER a imagem
          //scale: 0.4,
          //fit: BoxFit.fill // preenche a tela DISTORCENDO a imagem
        ),
      )));
}

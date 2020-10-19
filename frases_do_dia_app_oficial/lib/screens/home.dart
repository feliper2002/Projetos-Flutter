import 'package:flutter/material.dart';
import 'package:frases_do_dia_app_oficial/styles/textStyles.dart';
import 'dart:math';

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  var _phrases = [
    "''You can't use reason to convince anyone out of an argument that they didn't use reason to get into.'' \n- Neil deGrasse Tyson",
    "Mantenha seus olhos nas estrelas.",
    "''We are made of star stuff.'' \n- Carl Sagan",
    "Em algum lugar, alguma coisa incrível está esperando para ser conhecida.",
    "''Diante da vastidão do tempo e da imensidão do universo, é um imenso prazer para mim dividir um planeta e uma época com você.'' \n- Carl Sagan",
    "''Tudo aquilo que o homem ignora, não existe para ele. Por isso o universo de cada um, se resumo no tamanho de seu saber.'' \n- Albert Einstein",
    "Tudo o que temos é o instante, aproveite!",
    "Uma lâmpada brilha ao máximo antes de se apagar completamente.",
  ];

  var _generatedPhrase = 'Clique abaixo para gerar uma nova frase';

  void _generatePhrase() {
    var randomNumber = Random().nextInt(_phrases.length);
    setState(() {
      _generatedPhrase = _phrases[randomNumber];
    });
    //print(randomNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Frases do Dia'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          //width: double.infinity,
          child: Container(
            padding: EdgeInsets.all(28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/logo.png'),
                Text(
                  _generatedPhrase,
                  style: estiloFrases,
                ),
                RaisedButton(
                  onPressed: _generatePhrase,
                  child: Text(
                    'Gerar novo texto',
                    style: estiloDoBotao,
                    textAlign: TextAlign.justify,
                  ),
                  color: Colors.green,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 0),
                  child: Text(
                    'By - Felipe Ribeiro',
                    style: estiloMiniLogo,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

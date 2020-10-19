import 'package:flutter/material.dart';
import 'package:frases_do_dia/styles/textStyles.dart';

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  var _texto = 'Bem vindo(a)';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do Dia'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  // chama o método build
                  _texto = 'Mudou o texto';
                });
              },
              child: Text('Clique aqui!'),
            ),
            Text(
              'Frase: $_texto',
              style: novoEstilo,
            )
          ],
        ),
      ),
    );
  }
}

/*

const style_1 = umEstiloQualquer;

Container(
      padding: EdgeInsets.fromLTRB(20, 80, 0, 0), // borda interna
      //margin: EdgeInsets.all(30), // borda externa (margem)
      margin: EdgeInsets.only(top: 50, left: 50),
      // LTRB --> Left, Top, Right, Botton
      decoration: BoxDecoration(
          color: Colors.white, border: Border.all(width: 8, color: Colors.red)),
      //color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "texto1",
            style: style_1,
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Text(
              'texto3',
              style: style_1,
            ),
          ),
          Text("texto2", style: style_1),
          Padding(padding: EdgeInsets.all(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                't1 ',
                style: style_1,
                textAlign: TextAlign.justify,
              ),
              Text(
                't2 ',
                style: style_1,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
          FlatButton(
              onPressed: () {
                print('Botão clicado!');
              },
              child: Text('Click-me',
                  style: TextStyle(
                      color: Colors.black,
                      backgroundColor: Colors.blueAccent,
                      fontSize: 20,
                      decoration: TextDecoration.none)))
        ],
      ),
    )
*/

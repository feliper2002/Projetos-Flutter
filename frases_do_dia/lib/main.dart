import 'package:flutter/material.dart';

void main() {
  const umEstiloQualquer = TextStyle(
      decoration: TextDecoration.underline,
      decorationColor: Colors.red,
      decorationStyle: TextDecorationStyle.dashed,
      fontSize: 30.0,
      color: Colors.blue,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic,
      letterSpacing: 7,
      wordSpacing: 10);

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Frases do Dia',
      //home: Container(color: Colors.white)
      home: Container(
        padding: EdgeInsets.fromLTRB(20, 80, 0, 0), // borda interna
        //margin: EdgeInsets.all(30), // borda externa (margem)
        margin: EdgeInsets.only(top: 50, left: 50),
        // LTRB --> Left, Top, Right, Botton
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 8, color: Colors.red)),
        //color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "texto1",
              style: umEstiloQualquer,
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                'texto3',
                style: umEstiloQualquer,
              ),
            ),
            Text("texto2", style: umEstiloQualquer),
            Padding(padding: EdgeInsets.all(30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  't1 ',
                  style: umEstiloQualquer,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  't2 ',
                  style: umEstiloQualquer,
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
      )));
}

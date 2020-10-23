import 'package:flutter/material.dart';
import 'package:JokenPo/styles/text_styles.dart';
import 'dart:math';

class HomeScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'JokenPô',
        theme: ThemeData(primarySwatch: Colors.orange),
        home: HomeScreen(),
        debugShowCheckedModeBanner: false);
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String _titleApp = 'JokenPô';
  var score_user = 0, score_cel = 0;
  var _imagemApp = AssetImage('images/padrao.png');
  var _message = 'Escolha uma das opções abaixo.';

  void _selectedOption(String choiceUser) {
    var options = [
      'pedra',
      'papel',
      'tesoura',
      'pedra',
      'papel',
      'tesoura',
      'papel'
    ];
    var numero = Random().nextInt(7);
    var choiceApp = options[numero];
    print('Escolha do App: $choiceApp');
    print('Escolha do Usuário: $choiceUser');

    switch (choiceApp) {
      case 'pedra':
        setState(() {
          this._imagemApp = AssetImage('images/pedra.png');
        });
        break;
      case 'papel':
        setState(() {
          this._imagemApp = AssetImage('images/papel.png');
        });
        break;
      case 'tesoura':
        setState(() {
          this._imagemApp = AssetImage('images/tesoura.png');
        });
        break;
    }

    if ((choiceUser == 'pedra' && choiceApp == 'tesoura') ||
        (choiceUser == 'tesoura' && choiceApp == 'papel') ||
        (choiceUser == 'papel' && choiceApp == 'pedra')) {
      setState(() {
        this._message = 'Você ganhou!';
        score_user++;
      });
    } else if ((choiceApp == 'pedra' && choiceUser == 'tesoura') ||
        (choiceApp == 'tesoura' && choiceUser == 'papel') ||
        (choiceApp == 'papel' && choiceUser == 'pedra')) {
      setState(() {
        this._message = 'Você perdeu ;-;';
        score_cel++;
      });
    } else {
      this._message = 'Empatamos...';
    }

    if (score_cel == 10) {
      score_cel = 0;
      score_user = 0;
      this._message = 'Celular ganhou esta partida!';
    } else if (score_user == 10) {
      score_cel = 0;
      score_user = 0;
      this._message = 'Usuário ganhou esta partida!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: GestureDetector(
          onTap: () {},
          child: Text(_titleApp),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Usuário VS Celular', style: estilo_vs),
            Text('Escolha do celular:', style: estilo_escolha_celular),
            Image(image: _imagemApp),
            Text(
              this._message,
              style: style_choice,
            ),
            Text('Sua escolha: ', style: estilo_sua_escolha),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              GestureDetector(
                onTap: () => _selectedOption('papel'),
                child: Image.asset('images/papel.png', width: 100),
              ),
              GestureDetector(
                onTap: () => _selectedOption('pedra'),
                child: Image.asset(
                  'images/pedra.png',
                  width: 100,
                ),
              ),
              GestureDetector(
                onTap: () => _selectedOption('tesoura'),
                child: Image.asset('images/tesoura.png', width: 100),
              ),
            ]),
            Text('Pontuação', style: estilo_pontuacao),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '$score_user',
                  style: score_styles,
                ),
                Text(
                  '$score_cel',
                  style: score_styles,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Usuário',
                  style: score_names_style,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Celular',
                  style: score_names_style,
                  textAlign: TextAlign.center,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

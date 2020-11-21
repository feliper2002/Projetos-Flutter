import 'package:atm_consultoria/constants/colors/colors.dart';
import 'package:flutter/material.dart';

class Contato extends StatefulWidget {
  @override
  _ContatoState createState() => _ContatoState();
}

class _ContatoState extends State<Contato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_empresa_white,
      appBar: AppBar(
        title: Text('Contato'),
        backgroundColor: background_empresa_appBar_green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('lib/assets/images/detalhe_contato.png'),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Contato',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'Email: nossa_empresa@empresa.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'Telefone: (00) 1234-5678',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'Celular: (00) 99999-8888',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

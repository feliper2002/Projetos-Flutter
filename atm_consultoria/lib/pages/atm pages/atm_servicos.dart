import 'package:atm_consultoria/constants/colors/colors.dart';
import 'package:flutter/material.dart';

class Servicos extends StatefulWidget {
  @override
  _ServicosState createState() => _ServicosState();
}

class _ServicosState extends State<Servicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_empresa_white,
      appBar: AppBar(
        title: Text('Serviços'),
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
                  Image.asset('lib/assets/images/detalhe_servico.png'),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Nossos Serviços',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('Consultoria'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('Cálculo de Preços'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('Acompanhamento de Projetos'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

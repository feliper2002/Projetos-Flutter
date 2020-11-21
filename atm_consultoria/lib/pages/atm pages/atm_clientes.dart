import 'package:atm_consultoria/constants/colors/colors.dart';
import 'package:flutter/material.dart';

class Clientes extends StatefulWidget {
  @override
  _ClientesState createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_empresa_white,
      appBar: AppBar(
        title: Text('Clientes'),
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
                  Image.asset('lib/assets/images/detalhe_cliente.png'),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Clientes',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.lightGreen,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Image.asset('lib/assets/images/cliente1.png'),
              ),
              Text('Empresa de Software'),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Image.asset('lib/assets/images/cliente2.png'),
              ),
              Text('Empresa de Auditoria'),
            ],
          ),
        ),
      ),
    );
  }
}

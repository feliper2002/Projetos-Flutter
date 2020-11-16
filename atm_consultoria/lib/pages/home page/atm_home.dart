import 'package:flutter/material.dart';
// Imports
import 'package:atm_consultoria/constants/colors/home_colors.dart';
import 'package:atm_consultoria/pages/atm pages/atm_clientes.dart';
import 'package:atm_consultoria/pages/atm pages/atm_contato.dart';
import 'package:atm_consultoria/pages/atm pages/atm_empresa.dart';
import 'package:atm_consultoria/pages/atm pages/atm_servicos.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _abrirEmpresa() {
    Navigator.push(
        this.context, MaterialPageRoute(builder: (context) => AEmpresa()));
  }

  void _abrirServicos() {
    Navigator.push(
        this.context, MaterialPageRoute(builder: (context) => Servicos()));
  }

  void _abrirClientes() {
    Navigator.push(
        this.context, MaterialPageRoute(builder: (context) => Clientes()));
  }

  void _abrirContato() {
    Navigator.push(
        this.context, MaterialPageRoute(builder: (context) => Contato()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_white,
      appBar: AppBar(
        title: Text('ATM Consultoria'),
        backgroundColor: appBar_green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/assets/images/logo.png'),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => _abrirEmpresa(),
                    child: Image.asset('lib/assets/images/menu_empresa.png'),
                  ),
                  GestureDetector(
                    onTap: () => _abrirServicos(),
                    child: Image.asset('lib/assets/images/menu_servico.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => _abrirClientes(),
                    child: Image.asset('lib/assets/images/menu_cliente.png'),
                  ),
                  GestureDetector(
                    onTap: () => _abrirContato(),
                    child: Image.asset('lib/assets/images/menu_contato.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

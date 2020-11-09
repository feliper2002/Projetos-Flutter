import 'dart:js';

import 'package:atm_consultoria/constants/colors/home_colors.dart';
import 'package:atm_consultoria/pages/atm_clientes.dart';
import 'package:atm_consultoria/pages/atm_contato.dart';
import 'package:atm_consultoria/pages/atm_empresa.dart';
import 'package:atm_consultoria/pages/atm_servicos.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                    onTap: () {},
                    child: Image.asset('lib/assets/images/menu_empresa.png'),
                  ),
                  GestureDetector(
                    onTap: () {},
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
                    onTap: () {},
                    child: Image.asset('lib/assets/images/menu_cliente.png'),
                  ),
                  GestureDetector(
                    onTap: () {},
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

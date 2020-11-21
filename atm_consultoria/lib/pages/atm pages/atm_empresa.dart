import 'package:atm_consultoria/constants/colors/colors.dart';
import 'package:flutter/material.dart';

class AEmpresa extends StatefulWidget {
  @override
  _AEmpresaState createState() => _AEmpresaState();
}

class _AEmpresaState extends State<AEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_empresa_white,
      appBar: AppBar(
        title: Text('Empresa'),
        backgroundColor: background_empresa_appBar_green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('lib/assets/images/detalhe_empresa.png'),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Sobre a empresa',
                      style: TextStyle(
                        fontSize: 20,
                        color: empresa_texto_orange,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                    'Grunhindo devido ao peso, peguei as pernas da corça e dei uma última olhada para a carcça fumegante do lobo. O olho dourado que lhe restava encarava o céu, agora carregado de neve, e, por um momento, desejei ter a capacidade de sentir remorso por sua morte. Mas aquilo era a floresta, e era inverno. - Corte de Espinhos e Rosas. Sarah J. Maas'
                    'Grunhindo devido ao peso, peguei as pernas da corça e dei uma última olhada para a carcça fumegante do lobo. O olho dourado que lhe restava encarava o céu, agora carregado de neve, e, por um momento, desejei ter a capacidade de sentir remorso por sua morte. Mas aquilo era a floresta, e era inverno. - Corte de Espinhos e Rosas. Sarah J. Maas'
                    'Grunhindo devido ao peso, peguei as pernas da corça e dei uma última olhada para a carcça fumegante do lobo. O olho dourado que lhe restava encarava o céu, agora carregado de neve, e, por um momento, desejei ter a capacidade de sentir remorso por sua morte. Mas aquilo era a floresta, e era inverno. - Corte de Espinhos e Rosas. Sarah J. Maas'
                    'Grunhindo devido ao peso, peguei as pernas da corça e dei uma última olhada para a carcça fumegante do lobo. O olho dourado que lhe restava encarava o céu, agora carregado de neve, e, por um momento, desejei ter a capacidade de sentir remorso por sua morte. Mas aquilo era a floresta, e era inverno. - Corte de Espinhos e Rosas. Sarah J. Maas'
                    'Grunhindo devido ao peso, peguei as pernas da corça e dei uma última olhada para a carcça fumegante do lobo. O olho dourado que lhe restava encarava o céu, agora carregado de neve, e, por um momento, desejei ter a capacidade de sentir remorso por sua morte. Mas aquilo era a floresta, e era inverno. - Corte de Espinhos e Rosas. Sarah J. Maas'
                    'Grunhindo devido ao peso, peguei as pernas da corça e dei uma última olhada para a carcça fumegante do lobo. O olho dourado que lhe restava encarava o céu, agora carregado de neve, e, por um momento, desejei ter a capacidade de sentir remorso por sua morte. Mas aquilo era a floresta, e era inverno. - Corte de Espinhos e Rosas. Sarah J. Maas'
                    'Grunhindo devido ao peso, peguei as pernas da corça e dei uma última olhada para a carcça fumegante do lobo. O olho dourado que lhe restava encarava o céu, agora carregado de neve, e, por um momento, desejei ter a capacidade de sentir remorso por sua morte. Mas aquilo era a floresta, e era inverno. - Corte de Espinhos e Rosas. Sarah J. Maas'
                    'Grunhindo devido ao peso, peguei as pernas da corça e dei uma última olhada para a carcça fumegante do lobo. O olho dourado que lhe restava encarava o céu, agora carregado de neve, e, por um momento, desejei ter a capacidade de sentir remorso por sua morte. Mas aquilo era a floresta, e era inverno. - Corte de Espinhos e Rosas. Sarah J. Maas'
                    'Grunhindo devido ao peso, peguei as pernas da corça e dei uma última olhada para a carcça fumegante do lobo. O olho dourado que lhe restava encarava o céu, agora carregado de neve, e, por um momento, desejei ter a capacidade de sentir remorso por sua morte. Mas aquilo era a floresta, e era inverno. - Corte de Espinhos e Rosas. Sarah J. Maas'
                    'Grunhindo devido ao peso, peguei as pernas da corça e dei uma última olhada para a carcça fumegante do lobo. O olho dourado que lhe restava encarava o céu, agora carregado de neve, e, por um momento, desejei ter a capacidade de sentir remorso por sua morte. Mas aquilo era a floresta, e era inverno. - Corte de Espinhos e Rosas. Sarah J. Maas'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

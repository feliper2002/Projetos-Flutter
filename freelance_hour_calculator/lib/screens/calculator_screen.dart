import 'package:flutter/material.dart';
import 'package:freelance_hour_calculator/styles/text_styles.dart';

class CalculatorScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorScreen(),
      title: 'Freelance Payment Calculator',
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  double _showValue = 0;
  TextEditingController _projectValueController = TextEditingController();
  TextEditingController _daysController = TextEditingController();
  TextEditingController _hoursPerDayController = TextEditingController();
  TextEditingController _noWorkDaysController = TextEditingController();

  get downtown_image => Image.asset(
        'images/downtown.png',
        width: 390,
      );

  void _calculatePrice() {
    double projectValue = double.tryParse(_projectValueController.text);
    double days = double.tryParse(_daysController.text);
    double hoursPerDay = double.tryParse(_hoursPerDayController.text);
    double noWorkDays = double.tryParse(_noWorkDaysController.text);

    double valuePerHour = (projectValue / (days * 4 * hoursPerDay)) +
        ((noWorkDays * days * hoursPerDay));

    setState(() {
      this._showValue = valuePerHour;
    });
  }

  void setAllEmpty() {
    setState(() {
      this._showValue = 0;
      this._projectValueController.text = '';
      this._hoursPerDayController.text = '';
      this._noWorkDaysController.text = '';
      this._daysController.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(196, 196, 196, 10),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Freelance Payment Calculator',
          style: appBar_style,
        ),
        backgroundColor: Color.fromRGBO(64, 7, 137, 100),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 32, right: 32),
                child: TextField(
                  controller: _projectValueController,
                  style: text_field_style,
                  decoration: InputDecoration(labelText: 'Valor do projeto'),
                  maxLength: 10,
                  maxLengthEnforced: true,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
              Text(
                'Utilize ( . ) ao invés de ( , )',
                style: style_message_point,
              ),
              Padding(
                padding: EdgeInsets.only(left: 32, right: 32),
                child: TextField(
                  controller: _daysController,
                  style: text_field_style,
                  decoration: InputDecoration(labelText: 'Dias dedicados'),
                  maxLength: 3,
                  maxLengthEnforced: true,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 32, right: 32),
                child: TextField(
                  controller: _hoursPerDayController,
                  style: text_field_style,
                  decoration: InputDecoration(labelText: 'Horas / Dia'),
                  maxLength: 3,
                  maxLengthEnforced: true,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 32, right: 32),
                child: TextField(
                  controller: _noWorkDaysController,
                  style: text_field_style,
                  decoration: InputDecoration(labelText: 'Dias de férias'),
                  maxLength: 3,
                  maxLengthEnforced: true,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
              Text(
                '${_showValue.toStringAsPrecision(3)} / hora',
                style: show_value_style,
              ),
              Padding(
                padding: EdgeInsets.only(top: 14),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedButton(
                      onPressed: () => _calculatePrice(),
                      color: Color.fromRGBO(64, 7, 137, 100),
                      child: Text(
                        'CALCULAR',
                        style: button_calculate_style,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 160),
                      child: FloatingActionButton(
                          mini: true,
                          backgroundColor: Color.fromRGBO(64, 7, 137, 100),
                          onPressed: () => setAllEmpty(),
                          child: Icon(Icons.restore_from_trash)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: downtown_image,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:app_despesas_pessoais/components/transaction_form.dart';
import 'package:app_despesas_pessoais/components/transaction_list.dart';
import 'package:app_despesas_pessoais/models/transaction.dart';
import 'package:app_despesas_pessoais/styles/text_styles.dart';
import 'package:flutter/material.dart';

class DespesasPessoais extends StatefulWidget {
  @override
  _DespesasPessoaisState createState() => _DespesasPessoaisState();
}

class _DespesasPessoaisState extends State<DespesasPessoais> {
  final List<Transaction> _transactions = [];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });

    Navigator.of(context).pop();
  }

  _openTransactionFormModal(_) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return TransactionForm(_addTransaction);
      },
    );
  }

  _clearTransactions() {
    setState(() {
      _transactions.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.delete_forever),
              onPressed: () => _clearTransactions(),
            )
          ],
          centerTitle: true,
          title: Text(
            'Despesas Pessoais',
            style: app_bar_style,
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 28,
                child: Card(
                  child: Text('gráfico'.toUpperCase()),
                  color: Colors.blue,
                  elevation: 10,
                ),
              ),
              TransactionList(_transactions),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _openTransactionFormModal(context),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

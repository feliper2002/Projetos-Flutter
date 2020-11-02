import 'package:app_despesas_pessoais/models/transaction.dart';
import 'package:app_despesas_pessoais/styles/transaction_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
          itemCount: transactions.length,
          itemBuilder: (_, index) {
            final tr = transactions[index];
            return Card(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.blue,
                      width: 2,
                    )),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'R\$ ' + tr.value.toStringAsFixed(2),
                      style: transactions_value_style,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tr.title,
                        style: transaction_title_style,
                      ),
                      Text(
                        DateFormat('d MMM y').format(tr.date),
                        style: transaction_date_style,
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}

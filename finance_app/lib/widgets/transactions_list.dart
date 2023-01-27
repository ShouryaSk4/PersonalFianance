import 'package:flutter/material.dart';
import '../Models/transactions.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(transactionList());
}

class transactionList extends StatelessWidget {
  final List<Transactions> usertx = [
    Transactions('t1', 21, DateTime.now(), DateTime.now() as String),
    Transactions('t2', 21, DateTime.now(), DateTime.now() as String),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: usertx.map((tx) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purple,
                    width: 2,
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  '\$${tx.amount}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    tx.title as String,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat.yMMMd().format(tx.date),
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

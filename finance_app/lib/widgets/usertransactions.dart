import 'package:finance_app/widgets/newTransactions.dart';
import 'package:finance_app/widgets/transactions_list.dart';
import 'package:flutter/material.dart';
import '../Models/transactions.dart';
import 'package:intl/intl.dart';

class userTransactions extends StatefulWidget {
  @override
  _userTransactionsState createState() => _userTransactionsState();
}

class _userTransactionsState extends State<userTransactions> {
  final List<Transactions> usertx = [
    Transactions('t1', 21, DateTime.now(), DateTime.now() as String),
    Transactions('t2', 21, DateTime.now(), DateTime.now() as String),
  ];

  void useradd(String txtitle, double txamoutnt) {
    final newTx = Transactions(
        txtitle, txamoutnt, DateTime.now(), DateTime.now() as String);

    setState(() {
      usertx.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        newTransactions(useradd),
        transactionList(),
      ],
    );
  }
}

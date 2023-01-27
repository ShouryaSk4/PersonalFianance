import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:finance_app/widgets/usertransactions.dart';

class newTransactions extends StatelessWidget {
  final Function addTxn;
  final textinput = TextEditingController();
  final amountInput = TextEditingController();
  newTransactions(this.addTxn);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: textinput,
          ),
          TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountInput),
          ElevatedButton(
            onPressed: addTxn(textinput.text, double.parse(amountInput.text)),
            child: Text('add txn'),
          ),
        ]),
      ),
    );
  }
}

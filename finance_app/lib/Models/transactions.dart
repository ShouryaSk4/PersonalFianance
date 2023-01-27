import 'package:flutter/material.dart';

class Transactions {
  String? id;
  var date;
  String? title;
  double? amount;

  Transactions(
    this.title,
    this.amount,
    this.date,
    this.id,
  );
}

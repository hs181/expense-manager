import 'package:flutter/foundation.dart'; //needed to use required

class Transaction{
  //defining how a transaction looks like
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transaction({
    //all are compulsory fields
    @required this.id, 
    @required this.title,
    @required this.amount,
    @required this.date
  }); 
}
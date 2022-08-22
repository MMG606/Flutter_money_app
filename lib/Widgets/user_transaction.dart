import 'package:flutter/material.dart';
import 'new_transaction.dart';
import 'transacrtionlist.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: '0',
      title: 'Nike shoes',
      amount: 50.15,
      date: DateTime.now(),
    ),
    Transaction(
      id: '1',
      title: 'T-shiet',
      amount: 30.25,
      date: DateTime.now(),
    ),
  ];
  void _addNewTansaction(String title, double amount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTansaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}

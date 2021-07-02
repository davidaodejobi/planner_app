import 'package:flutter/material.dart';
import 'package:planner_app/models/transaction.dart';
import 'package:planner_app/widgets/transaction_list.dart';

import './new_transaction.dart';


class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'Gucci',
      amount: 24.37,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Benz',
      amount: 26.37,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'Love',
      amount: 58.37,
      date: DateTime.now(),
    ),
  ];


  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),

    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:planner_app/models/transaction.dart';

const kMainColor = Color(0xFF2CA1BC);
const kMainColor2 = Color(0xFFD5D6D7);

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tx) {
        return Container(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
          decoration: BoxDecoration(
              color: kMainColor2,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 5.0,
                    spreadRadius: 0.5),
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 0.5),
              ]),
          child: Row(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 2,
                    color: kMainColor,
                  )),
                  child: Text(
                    '\$${tx.amount}',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tx.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    tx.date.toString(),
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )  
            ],
          ),
        );
      }).toList(),
    );
  }
}

import 'package:flutter/material.dart';

const kMainColor = Color(0xFF2CA1BC);
const kMainColor2 = Color(0xFFD5D6D7);

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      labelText: 'Title',
                    ),
                  ),
                  TextField(
                    controller: amountController,
                    decoration: InputDecoration(
                      labelText: 'Amount',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(titleController.text);
                      addTx(titleController.text,
                          double.parse(amountController.text));
                    },
                    child: Text('Add transaction'),
                  )
                ],
              ),
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
            ),
          ],
        ),
      ],
    );
  }
}

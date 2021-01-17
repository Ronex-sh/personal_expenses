import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 25,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (v) => titleInput = v
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(labelText: 'Amount'),
              //   onChanged: (v) => amontInput = v
            ),
            FlatButton(
              onPressed: () {
               // print(titleController.text);
                addTx(titleController.text, double.parse(amountController.text));
              },
              child: Text('Add Transaction'),
              color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}

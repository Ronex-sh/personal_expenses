import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);
  void submitData() {
    final entredTitle = titleController.text;
    final entredAmount = double.parse(amountController.text);
    if (entredTitle.isEmpty || entredAmount <= 0) {
      return;
    }
    addTx(entredTitle, entredAmount);
  }

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
              keyboardType: TextInputType.text,
              onSubmitted: (val) => submitData(),
              // onChanged: (v) => titleInput = v
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(labelText: 'Amount'),
              keyboardType: TextInputType.number,
              onSubmitted: (val) => submitData(),
              //   onChanged: (v) => amontInput = v
            ),
            FlatButton(
              onPressed: submitData,
              child: Text('Add Transaction'),
              color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:personal_expenses/widjet/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  //String titleInput, amontInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('CHART!'),
              elevation: 5,
            ),
          ),
          Card(
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
                      print(titleController.text);
                    },
                    child: Text('Add Transaction'),
                    color: Colors.amber,
                  )
                ],
              ),
            ),
          ),
          
          TransactionList(),
        ],
      ),
    );
  }
}

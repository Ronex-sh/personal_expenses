import 'package:flutter/material.dart';
import 'package:personal_expenses/transaction.dart';

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
  List<Transaction> transactions = [
    Transaction(id: 1, title: 'new shose', amount: 4.5, date: DateTime.now()),
    Transaction(id: 2, title: 'new shose2', amount: 4.5, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('CHART!'),
              elevation: 5,
            ),
          ),
          Card(child: Text(transactions[0].title),)  // to display the transactions >> static
       
        ],
      ),
    );
  }
}

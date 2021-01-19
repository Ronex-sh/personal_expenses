import 'package:flutter/material.dart';
import 'widjet/user_transactions.dart';

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
      resizeToAvoidBottomInset: false,
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
            UserTransactions()
          ],
        ),
    );
  }
}

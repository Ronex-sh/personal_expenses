import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_expenses/model/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    // Card(child: Text(transactions[0].title),)  // to display the transactions >> static
    return Container(
      height: 200,
    
      child:ListView.builder(
      itemBuilder: (_,index){
        return Card(
          child:    Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purple,
                    width: 2,
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  '\$' + transactions[index].amount.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transactions[index].title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //  Text(e.date.toString(),
                  //       style: TextStyle(
                  //         color: Colors.grey,
                  //       ),)
                  Text(
                    DateFormat.yMd().format(
                        transactions[index].date), //add intl package to format the date
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              )
            ],
          ) ,
        );
      },itemCount: transactions.length,
  
      ) ,
        
      );
  }
}

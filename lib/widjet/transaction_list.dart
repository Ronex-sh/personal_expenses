import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_expenses/model/transaction.dart';

class TransactionList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // Card(child: Text(transactions[0].title),)  // to display the transactions >> static
    return Column(
            children: _usertransactons.map((e) => // to display the transactions >> dynamic
                    Row(
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
                            '\$' + e.amount.toString(),
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
                              e.title,
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
                                  e.date), //add intl package to format the date
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        )
                      ],
                    ))
                .toList(),
          );
  }
}

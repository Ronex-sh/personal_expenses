import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_expenses/model/transaction.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTrsnsaction;
  TransactionList(this.transactions, this.deleteTrsnsaction);
  @override
  Widget build(BuildContext context) {
    // Card(child: Text(transactions[0].title),)  // to display the transactions >> static
    return Container(
      // height: MediaQuery.of(context).size.height*0.6,
      child: transactions.isEmpty
          ? LayoutBuilder(builder: (context, constraint) {
              return Column(
                children: [
                  Text(
                    'no transactions added yet!',
                    style: GoogleFonts.adamina(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                      height: constraint.maxHeight*0.5,
                      child: Image.asset('assets/image/waiting.png')),
                ],
              );
            })
          : ListView.builder(
              itemBuilder: (_, index) {
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 5,
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: FittedBox(
                          child: Text('\$${transactions[index].amount}'),
                        ),
                      ),
                    ),
                    title: Text(
                      transactions[index].title,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    subtitle: Text(
                      DateFormat.yMMMd().format(transactions[index].date),
                    ),
                    trailing: IconButton(
                        color: Theme.of(context).errorColor,
                        icon: Icon(Icons.delete),
                        onPressed: () =>
                            deleteTrsnsaction(transactions[index].id)),
                  ),
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}

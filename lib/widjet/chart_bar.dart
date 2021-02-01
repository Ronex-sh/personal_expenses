import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPctOfTotal;

  ChartBar(this.label, this.spendingAmount, this.spendingPctOfTotal);

  @override
  Widget build(BuildContext context) {
    print(spendingAmount);
    print(spendingPctOfTotal);
    return LayoutBuilder(builder: (context,constraint){
      return 
     Column(
      children: <Widget>[
        Container(
          height: constraint.maxHeight*0.15,
          
          child: FittedBox(
            child: Text('\$${spendingAmount.toStringAsFixed(0)}'),
          ),
        ),
        SizedBox(
          height: constraint.maxHeight*0.1,
        ),
        Container(
          height: constraint.maxHeight*0.5,
          width: constraint.maxHeight*0.1,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  color: Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              FractionallySizedBox(
                heightFactor: spendingPctOfTotal,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: constraint.maxHeight*0.1,
        ),
        Text(label),
      ],
    );
    });
    
    
  }
}

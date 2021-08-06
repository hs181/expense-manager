import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPctofTotal;

  ChartBar(this.label, this.spendingAmount, this.spendingPctofTotal);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 20, //bar height does not change for large amounts fitted
          child: FittedBox( //fit in the available space
            child: Text('\u{20B9}${spendingAmount.toStringAsFixed(0)}'),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            //3D overlapping
            children: <Widget>[
              //innermost widget
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  color: Colors.grey
                      .shade400, //Color.fromRGBO(220,220,220,1) : custom light Grey
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              //second innermost widget
              FractionallySizedBox(
                heightFactor: spendingPctofTotal,
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
          height: 4,
        ),
        Text(label),
      ],
    );
  }
}

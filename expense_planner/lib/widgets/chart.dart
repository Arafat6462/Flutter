import 'package:expense_planner/models/transaction.dart';
import 'package:expense_planner/widgets/chart_bar.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;
  Chart(this.recentTransactions);

  List<Map<String, Object>> get groupTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));

      var totalSum = 0.0;

      for (var i = 0; i < recentTransactions.length; i++) {
        if (recentTransactions[i].date.day == weekDay.day &&
            recentTransactions[i].date.month == weekDay.month &&
            recentTransactions[i].date.year == weekDay.year) {
          totalSum += recentTransactions[i].amount;
        }
      }
      print(DateFormat.E().format(weekDay));
      print(totalSum);
      return {
        'day': DateFormat.E().format(weekDay).substring(0, 1),
        'amount': totalSum,
      };
    });
  }

  // const Chart({super.key});
  double get totalSpending {
    return groupTransactionValues.fold(0.0, (sum, item) {
      return sum + (item['amount'] as double);
    });
  }

  @override
  Widget build(BuildContext context) {
    print(groupTransactionValues);
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: groupTransactionValues.map((data) {
          return ChartBar(
              data['day'].toString(),
              (data['amount'] as double),
              totalSpending == 0.0
                  ? 0.0
                  : (data['amount'] as double) / totalSpending);
        }).toList(),
      ),
    );
  }
}
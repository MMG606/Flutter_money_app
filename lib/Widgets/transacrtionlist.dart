import 'package:flutter/material.dart';
import 'package:moneyapp/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
              elevation: 5,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 51, 0, 145),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '\$' + transactions[index].amount.toStringAsFixed(2),
                      // '\$${trans.amount}',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 51, 0, 145)),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transactions[index].title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        DateFormat.yMd().format(transactions[index].date),
                        //trans.date.toString(),
                        style: const TextStyle(
                            color: Color.fromARGB(255, 134, 134, 134)),
                      ),
                    ],
                  ),
                ],
              ));
        },
        itemCount: transactions.length,
      ),
    );
  }
}

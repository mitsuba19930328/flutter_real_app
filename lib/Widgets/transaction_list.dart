import 'package:flutter/material.dart';
import './../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: transactions.isEmpty
          ? Column(
              children: [
                Text(
                  'No Transactions added yet!',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
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
                          child: Text(
                            '\$${transactions[index].amount}',
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      transactions[index].title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    subtitle: Text(
                      DateFormat.yMMMd().format(transactions[index].date),
                    ),
                  ),
                );
                // return Card(
                //   margin: const EdgeInsets.all(10.0),
                //   elevation: 10,
                //   child: Container(
                //     margin: const EdgeInsets.all(10.0),
                //     child: Row(
                //       children: [
                //         Container(
                //           margin: EdgeInsets.symmetric(
                //             vertical: 10,
                //             horizontal: 15,
                //           ),
                //           decoration: BoxDecoration(
                //             border: Border.all(
                //               color: Theme.of(context).primaryColor,
                //               width: 2,
                //             ),
                //           ),
                //           padding: EdgeInsets.all(10),
                //           child: Text(
                //             '\$${transactions[index].amount.toStringAsFixed(2)}',
                //             style: TextStyle(
                //               fontWeight: FontWeight.bold,
                //               fontSize: 20,
                //               color: Theme.of(context).primaryColor,
                //             ),
                //           ),
                //         ),
                //         Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               transactions[index].title,
                //               style: Theme.of(context).textTheme.headline6,
                //             ),
                //             Text(
                //               DateFormat.yMMMd()
                //                   .format(transactions[index].date),
                //               style: TextStyle(color: Colors.grey),
                //             ),
                //           ],
                //         ),
                //       ],
                //     ),
                //   ),
                // );
              },
              itemCount: transactions.length,
            ),
    );
  }
}

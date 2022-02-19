import 'package:flutter/material.dart';
import './transaction.dart';

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
  final List<Transaction> transactions = [];
  Transaction(id: 't1', title: 'New Shows', amount: 69.99, date: Datetime.now(),);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              child: Text('CHART'),
              margin: EdgeInsets.all(8),
              color: Colors.blue,
              elevation: 5,
            ),
          ),
          Card(color: Colors.red, child: Text('LIST OF TX')),
          // Center(
          //   child: Text('Widget Playground!'),
          // ),
        ],
      ),
    );
  }
}

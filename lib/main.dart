import 'package:flutter/material.dart';
import 'package:flutter_real_app/Widgets/user_transactions.dart';
import './Widgets/user_transactions.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
          UserTransactions(),
        ],
      ),
    );
  }
}

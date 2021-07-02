import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:planner_app/widgets/user_transaction.dart';
import 'models/transaction.dart';

const kMainColor = Color(0xFF2CA1BC);
const kMainColor2 = Color(0xFFD5D6D7);
void main() {
  runApp(MyApp());
}

// stateless widget created
class MyApp extends StatelessWidget {
// This widget is the root
// of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
        primaryColor: Color(0xFFD5D6D7),
        scaffoldBackgroundColor: Color(0xFFD5D6D7),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Color(0xFF4D5468)),
        ),
      ),
      // first screen of app
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Transaction> transactions = [];
  String _title = 'Planner App'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title),),
      body: UserTransaction(),
    );
  }
}

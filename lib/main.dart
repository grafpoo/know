import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:flutter/cupertino.dart';
import 'package:know/page/quizpage.dart';

const String _appBarTitle = "Know Your Insignia";

final Logger log = new Logger('insignia');

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Know',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold (
        backgroundColor: Colors.grey.shade900,
        body: SafeArea (
          child: Padding (
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        )
      )
    );
  }
}

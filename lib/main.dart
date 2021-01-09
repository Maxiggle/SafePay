import 'package:flutter/material.dart';
import 'package:safepay/Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        body: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Container(
            height: 500,
            child: SignUp(),
          ),
        ),
      ),
    );
  }
}

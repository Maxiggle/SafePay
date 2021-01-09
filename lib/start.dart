import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500.0,
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Container(
              child: Image(
                image: AssetImage('images/online.png'),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20.0),
            RichText(
              text: TextSpan(
                  text: 'Welcome to',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  children: [
                    TextSpan(
                        text: '  SafePay',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple))
                  ]),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Buy and Sell anything securely',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height:30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  onPressed: () {},
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.deepPurple,
                ),
                SizedBox(width: 20.0),
                RaisedButton(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  onPressed: () {},
                  child: Text(
                    'REGISTER',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.deepPurple,
                ),
              ],
            ),
            SizedBox(height: 20.0),
            SignInButton(
            Buttons.Google,
           text: "Sign up with Google",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

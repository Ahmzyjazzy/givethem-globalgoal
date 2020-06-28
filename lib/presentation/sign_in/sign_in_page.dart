import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  static String title = 'Sign In';
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(SignInPage.title, style: TextStyle(
            fontSize: 20.0,
          ),),
        ),
      ),
    );
  }
}

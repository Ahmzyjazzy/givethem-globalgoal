import 'package:flutter/material.dart';

class DonatePage extends StatefulWidget {
  static String title = 'Donate';

  @override
  _DonatePageState createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(DonatePage.title),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(DonatePage.title, style: TextStyle(
            fontSize: 20.0,
          ),),
        ),
      ),
    );
  }
}

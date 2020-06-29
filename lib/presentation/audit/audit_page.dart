import 'package:flutter/material.dart';

class AuditPage extends StatefulWidget {
  static String title = 'Audit';
  @override
  _AuditPageState createState() => _AuditPageState();
}

class _AuditPageState extends State<AuditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(AuditPage.title, style: TextStyle(
            fontSize: 20.0,
          ),),
        ),
      ),
    );
  }
}

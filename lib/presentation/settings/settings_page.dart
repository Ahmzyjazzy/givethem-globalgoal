import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  static String title = 'Settings';
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(SettingsPage.title),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(SettingsPage.title, style: TextStyle(
            fontSize: 20.0,
          ),),
        ),
      ),
    );
  }
}

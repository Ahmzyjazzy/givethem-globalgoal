import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:givethem/presentation/goals/widgets/body.dart';

import '../../constants.dart';

class GoalsPage extends StatefulWidget {
  static String title = 'Goals';
  @override
  _GoalsPageState createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Body()
    );
  }

}

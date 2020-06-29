import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:givethem/constants.dart';
import 'package:givethem/presentation/routes/router.gr.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class GoalList extends StatelessWidget {
  final List<String> goals = List<String>.generate(17, (index) => 'assets/icons/goals/TheGlobalGoals_Icons_Color_Goal_${index + 1}.png');

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: kDefaultPadding * 1.5),
            child: Text('Global Goals', style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),)
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          height: 200.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: goals.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () async {
                String url = 'https://www.globalgoals.org/';
                if (await canLaunch(url)) {
                  await launch(
                    url,
                    forceSafariVC: true,
                    forceWebView: true,
                    enableJavaScript: true,
                  );
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Container(
                width: 200,
                margin: EdgeInsets.only(
                    left: index == 0 ? kDefaultPadding * 1.5 : kDefaultPadding,
                    right: index == goals.length - 1 ? kDefaultPadding * 1.5 : 0),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(goals[index]),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

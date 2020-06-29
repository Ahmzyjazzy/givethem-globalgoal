import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:givethem/constants.dart';
import 'package:givethem/presentation/routes/router.gr.dart';

class WelcomeUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Hello', style: TextStyle(
                  color: Colors.white
                ),),
                Text('Ahmzy', style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.white
                ),)
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              ExtendedNavigator.of(context)
                  .pushNamed(Routes.settingsPage);
            },
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://lh3.googleusercontent.com/ogw/ADGmqu-_1pTGrU9LnM-mvIWsqoH9-KHAEnqVxKNihPM5=s32-c-mo'),
            ),
          )
        ],
      ),
    );
  }
}

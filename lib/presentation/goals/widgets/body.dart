import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:givethem/constants.dart';
import 'package:givethem/presentation/goals/widgets/goal_list.dart';
import 'package:givethem/presentation/goals/widgets/welcome_user.dart';
import 'package:givethem/presentation/goals/widgets/donation_summary.dart';
import 'package:givethem/presentation/routes/router.gr.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                SizedBox(height: kDefaultPadding * 2),
                Image.asset('assets/icons/goals-header.png',
                  fit: BoxFit.cover,
                  color: Colors.black12,
                  colorBlendMode: BlendMode.overlay,
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: kDefaultPadding * 2),
                    WelcomeUser(),
                    SizedBox(height: kDefaultPadding),
                    GoalList(),
                    SizedBox(height: kDefaultPadding / 2),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.45),
                  decoration: BoxDecoration(
                    color: Colors.white,//kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child:
                  ListView(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: kDefaultPadding * 1.5, bottom: kDefaultPadding * 1.5),
                        child: Text('Donation Summary',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                          ),),
                      ),
                      DonationSummary(
                        caption: 'Donated by me',
                        value: '4',
                        amount: '20,000.00',
                        icon: Icons.person_outline,
                        colors: [Color(0xFF50D6B9), Color(0xFF33BE9A)],
                        gradient: [Alignment.topLeft, Alignment.bottomCenter],
                      ),
                      DonationSummary(
                        caption: 'Donated by everyone',
                        value: '12',
                        amount: '850,000.00',
                        icon: Icons.people_outline,
                        colors: [Color(0xFF7877D2), Color(0XFF5050B4)],
                        gradient: [Alignment.topLeft, Alignment.bottomCenter],
                      ),
                      Divider(
                        height: 10.0,
                      ),
                      DonationSummary(
                        caption: 'Goal Supported',
                        value: '12',
                        amount: '750,000.00',
                        icon: Icons.call_missed_outgoing,
                        colors: [Color(0xFFFD8924), Color(0xFFFC5F15)],
                        gradient: [Alignment.topLeft, Alignment.bottomCenter],
                      ),
                      DonationSummary(
                        caption: 'Amount Left',
                        value: '12',
                        amount: '50,000.00',
                        icon: Icons.attach_money,
                        colors: [Color(0xFF7877D2), Color(0XFF5050B4)],
                        gradient: [Alignment.topLeft, Alignment.bottomCenter],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20.0,
                  right: 20.0,
                  child: FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: (){
                      ExtendedNavigator.of(context)
                          .pushNamed(Routes.donatePage);
                    }
                  ),
                )
              ],
            ),
          ),
        ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:givethem/constants.dart';

class DonationSummary extends StatelessWidget {
  const DonationSummary({
    Key key,
    @required this.caption,
    @required this.value,
    @required this.amount,
    @required this.icon,
    this.colors,
    this.gradient,
  }) : super(key: key);

  final String caption;
  final String value;
  final String amount;
  final IconData icon;
  final List<Color> colors;
  final List<AlignmentGeometry> gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 48.0,
            width: 48.0,
            decoration: BoxDecoration(
              gradient: gradient != null
                  ? LinearGradient(
                begin: gradient[0],
                end: gradient[1],
                stops: [0.1, 1.0],
                colors: [
                  colors != null ? colors[0] : Colors.grey,
                  colors != null ? colors[1] : Colors.white70,
                ],
              )
                  : LinearGradient(
                stops: [0.1, 1.0],
                colors: [
                  colors != null ? colors[0] : Colors.grey,
                  colors != null ? colors[1] : Colors.white70,
                ],
              ),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: colors[0],
                  offset: Offset(1.0, 1.0),
                  blurRadius: 1.0,
                )
              ],
            ),
            child: Icon(icon, color: Colors.white,),
          ),
          Expanded(
            flex: 5,
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(caption,
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500
                    ),
                    textAlign: TextAlign.start
                    ,),
                  Text('N${amount}', style: TextStyle(
                      color: Colors.black54
                  ),),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            width: 30.0,
            height: 30.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: colors[0], width: 1.0, style: BorderStyle.solid)
            ),
            child: Text(value,
              style: TextStyle(
                color: colors[1]
              ),
            ),
          ),
        ],
      ),
    );
  }
}
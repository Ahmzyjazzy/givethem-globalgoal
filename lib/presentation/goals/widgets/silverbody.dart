import 'package:flutter/material.dart';

class SilverBody extends StatelessWidget {
  final List<String> goals = List<String>.generate(17, (index) => 'assets/icons/goals/TheGlobalGoals_Icons_Color_Goal_${index + 1}.png');

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text('GiveThem'),
          floating: true,
          expandedHeight: size.height * 0.2,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset('assets/icons/goals-header.png',
              fit: BoxFit.cover,
              color: Colors.black12,
              colorBlendMode: BlendMode.overlay,
            ),
            collapseMode: CollapseMode.parallax,
            stretchModes: [
              StretchMode.fadeTitle
            ],
          ),
          stretch: true,
        ),
        SliverGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 15.0,
            crossAxisSpacing: 15.0,
            children: goals.map((val) => Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(val),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20)
              ),
            )).toList()
        )
      ],
    );
  }
}

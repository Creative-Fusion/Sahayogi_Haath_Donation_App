import 'package:flutter/material.dart';
import '../constants.dart';
class OverviewDetail extends StatelessWidget {
  OverviewDetail({@required this.info, @required this.title});

  final dynamic info;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '$info',
          style: kInfoTextStyle,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          '$title',
          style: kTitleTextStyle,
        ),
      ],
    );
  }
}

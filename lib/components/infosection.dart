import 'package:flutter/material.dart';
import './overview_screens.dart';
class InfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF1F3F6),
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          OverviewDetail(
            title: 'Total Donation',
            info: 'Rs. 1500.0',
          ),
          OverviewDetail(
            title: 'Organization',
            info: '3',
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, right: 12),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xffffffff),
                    width: 4,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/children.jpg'),
                radius: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

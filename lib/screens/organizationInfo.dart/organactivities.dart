import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sahayogihaath/components/datalist.dart';
import 'package:sahayogihaath/constants.dart';


class OrganizationActivity extends StatefulWidget {
  static const id = 'organizationactivity';
  @override
  _OrganizationActivityState createState() => _OrganizationActivityState();
}

class _OrganizationActivityState extends State<OrganizationActivity> {
  List<IconData> _icons = [
    FontAwesomeIcons.clock,
    FontAwesomeIcons.heart,
    FontAwesomeIcons.comment,
  
  ];

// Widget _buildIcon(int index){
//   return GestureDetector(
//     onTap:(){
//     //change color
//     }
//   );
// }
  @override
  Widget build(BuildContext context) {
        Size size= MediaQuery.of(context).size;

    return Scaffold(
      body:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
              itemCount: activitydata.length,
              itemBuilder: (context, int index) {
                Activities activity = activitydata[index];
                return Container(
  decoration: cHomeListContainerDecoration,
      padding: EdgeInsets.fromLTRB(8, 50, 10, 8),
      child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: <Widget>[
     
          Container(
            height: size.width*0.2,
            width: size.width*0.22,
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage(
                     'images/${activity.image}',
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                  activity.title,
                    style: tRecentsText2Theme.copyWith(fontSize: size.width*0.042),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        activity.author,
                        style: tRecentsText1Theme.copyWith(fontSize: size.width*0.028),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: size.width*0.347,
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  _icons[0],
                                  color: Color(0xff999999),
                                  size: 15,
                                ),
                                Text(
                                  activity.date,
                                  style: tRecentsText1Theme.copyWith(fontSize: size.width*0.028),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                          _icons[1],
                                  color: Color(0xff999999),
                                  size: 15,
                                ),
                                Text(
                                  '180',
                                  style: tRecentsText1Theme.copyWith(fontSize: size.width*0.028),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                             _icons[2],
                                  color: Color(0xff999999),
                                  size: 15,
                                ),
                                Text(
                                  '21',
                                  style: tRecentsText1Theme.copyWith(fontSize: size.width*0.028),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );

                
                  
              },
            ),
          ],
        ),
      );
    
  }
}

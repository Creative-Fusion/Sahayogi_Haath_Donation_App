import 'package:flutter/material.dart';
import 'package:sahayogihaath/constants.dart';

class ActivitiesScreen extends StatefulWidget {
  static const id = 'activitiesscreen';
  @override
  _ActivitiesScreenState createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  bool isFavorite = true;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    void toggleiconstate() {
      isFavorite = !isFavorite;
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: mediaQuery.size.width * 1,
                  height: mediaQuery.size.height * 0.50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images1/children.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 40.0,
                    left: 10.0,
                  ),
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
                padding: EdgeInsets.symmetric(),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FittedBox(
                        child: Text(
                          'Child Care Center',
                          style: kMainTextStyle,
                        ),
                      ),
                      IconButton(
                          icon: Icon(isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border),
                          iconSize: mediaQuery.size.height * 0.07,
                          color: Colors.red,
                          disabledColor: Colors.black,
                          onPressed: () {
                            toggleiconstate();
                          })
                    ])),
            Container(
                margin:
                    EdgeInsets.only(left: 5.0, top: 15, right: 5.0, bottom: 30),
                height: mediaQuery.size.height * 0.13,
                width: double.infinity,
                decoration: kdecorationStyle,
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                  leading: CircleAvatar(
                    radius: 30.0,
                    child: ClipOval(
                      child: Image(
                        height: mediaQuery.size.height * 0.09,
                        image: AssetImage('assets/images1/children.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(
                    'Nista Simkhada',
                    style: kLabelTextStyle,
                  ),
                  subtitle: Text(
                    '24th sept, 2020',
                    style: kTextStyle,
                  ),
                  trailing: Text(
                    'By: Helping Hands',
                    style: kLabelTextStyle,
                  ),
                )),
            Container(
                width: double.infinity,
                height: mediaQuery.size.height * 0.4,
                margin: EdgeInsets.only(
                    left: 8.0, top: 5.0, right: 8.0, bottom: 5.0),
                decoration: BoxDecoration(
                  color: Colors.white10,
                ),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: kFinalTextStyle,



                ),
            ),
            // // overflow: TextOverflow.ellipsis,
          ],
        ),
      ),
    );
  }
}

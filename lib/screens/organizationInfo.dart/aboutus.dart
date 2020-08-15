import 'package:flutter/material.dart';
import 'package:sahayogihaath/components/infosection.dart';
import 'package:sahayogihaath/constants.dart';
import 'package:sahayogihaath/components/donatebutton.dart';

class OrganizationScreen extends StatefulWidget {
    static const id = 'organizationscreen';
  @override
  _OrganizationScreenState createState() => _OrganizationScreenState();
}

class _OrganizationScreenState extends State<OrganizationScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 400.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/children.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
            TabBar(
                controller: _tabController,
                indicatorColor: Colors.grey[300],
                labelColor: Colors.grey,
                unselectedLabelColor: Colors.grey,
                labelPadding: EdgeInsets.symmetric(horizontal: 12.0),
                indicatorPadding: EdgeInsets.all(10.0),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3.0,
                tabs: <Widget>[
                  Tab(
                    child: Text('About us',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        )),
                  ),
                
                      Tab(
                      child: Text('photos',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                      ),
                      ),
                  
                  Tab(
                    child: Text('Activities',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                        ),
                  ),
                  Tab(
                    child: Text('contact',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                        ),
                  ),
                ],
                ),
            Padding(
              padding: EdgeInsets.only(left: 12.0, top: 13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Child Care Center :',
                    style: kLabelTextStyle,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 250.0,
              margin: EdgeInsets.only(
                  left: 14.0, top: 20.0, right: 12.0, bottom: 10.0),
              decoration: BoxDecoration(
                color: Colors.white10,
              ),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                style: kMainTextStyle,
              ),
            ),
            InfoSection(),
            SizedBox(
              height: 30,
            ),
            RoundButton(
              title: 'Donate',
              onPressed: () {
                print('1500');
              },
            )
          ],
        ),
      ),
    );
  }
}

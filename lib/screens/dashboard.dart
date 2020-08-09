import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './activities/descriptionform.dart';
class Dashboard extends StatelessWidget {
  static const id = 'dashboard';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Center(
              child: Text(
                'Dashboard',
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            child: Text('Logout'),
          ),
            RaisedButton(
            onPressed: () {
             Navigator.of(context).pushNamed(DescriptionForm.id);
            },
            child: Text('create activity'),
          )
        ],
      ),
    );
  }
}

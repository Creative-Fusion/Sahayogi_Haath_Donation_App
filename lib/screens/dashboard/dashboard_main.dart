import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:sahayogihaath/provider/firestore/database/user.dart';

import '../../routes.dart';
import '../../provider/auth_provider.dart';
import '../splash.dart';
import './dashboard.dart';

class DashboardMain extends StatefulWidget {

  @override
  _DashboardMainState createState() => _DashboardMainState();
}

class _DashboardMainState extends State<DashboardMain> {
  Map<String,dynamic> user;

  bool isLoading=true;

  Future<void> getUserData() async{
    final authProvider = Provider.of<AuthProvider>(context);
    await authProvider.getUserData();

    user = authProvider.userData;
    if(user!=null){
      setState(() {
        isLoading =false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    final authProvider = Provider.of<AuthProvider>(context);
    
    getUserData();
    print(user);
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Sahayogi',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit,color: Colors.black,),
            tooltip: 'Edit Your Profile',
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.editData);
            },
          ),
          FlatButton(
            onPressed: (){
              authProvider.signOut();
            },
            child: Text('Logout'),
          )
        ],
      ),
      body: isLoading ? SplashScreen() : Dashboard(user),
    );
  }
}

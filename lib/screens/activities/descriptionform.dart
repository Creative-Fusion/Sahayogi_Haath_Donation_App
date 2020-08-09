import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import './activitiesScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class DescriptionForm extends StatefulWidget {
    static const id = 'descriptionform';

  @override
  _DescriptionFormState createState() => _DescriptionFormState();
}

class _DescriptionFormState extends State<DescriptionForm> {
  var _enteredDescription = '';

  void _sendMessage(){
    FocusScope.of(context).unfocus();
    Firestore.instance.collection('activities').add({
'description': _enteredDescription,
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.lightBlueAccent,
      body: Center(
child: Card(
  margin: EdgeInsets.all(20),
  child: SingleChildScrollView(
  child:Padding(
    padding: EdgeInsets.all(16),
    child: Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children:<Widget>[
TextField(
decoration: InputDecoration(
  labelText: 'About 250 words',
),
onChanged: (value){
  setState(() {
    _enteredDescription = value;
  });
}

) ,

SizedBox(
  height: 12.0,
),
RaisedButton(
  child: Text('submit'),
  onPressed: _enteredDescription.trim().isEmpty? null:_sendMessage, 
  ),
  SizedBox(
  height: 12.0,
),
  RaisedButton(
  child: Text('ActivityScreen'),
  onPressed: (){
      Navigator.of(context).pushNamed(ActivitiesScreen.id);
  },),
        ],
      ),
       ),
    ),
  ),
),
      ),
    );
  }
}



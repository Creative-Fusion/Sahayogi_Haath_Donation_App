import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {

  RoundButton({this.color,this.title,this.onPressed});

  final Color color;
  final String title;
  final Function onPressed;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 11.0, right: 7.0, bottom: 35.0, top:20.0),
      child: Material(
        elevation: 5.0,
        color: Color(0xff7585FF),
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 550.0,
          height: 42.0,
          child: Text(
            '$title',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:social_media_app_starter/screens/Button.dart';
import 'package:social_media_app_starter/screens/Button2.dart';
import 'package:social_media_app_starter/screens/InputField.dart';

import 'Button.dart';
import 'InputField.dart';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(height: 40,),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: InputField(),
          ),
          SizedBox(height: 40,),
          Button(),
          SizedBox(height: 40,),
          Button2(),
          SizedBox(height: 40,),
          GestureDetector(
            child: Text(
              'Forgot Password',
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.grey,
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
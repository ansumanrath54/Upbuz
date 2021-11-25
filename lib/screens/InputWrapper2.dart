import 'package:flutter/material.dart';
import 'package:social_media_app_starter/constant.dart';
import 'package:social_media_app_starter/screens/Button.dart';
import 'package:social_media_app_starter/screens/Button2.dart';
import 'package:social_media_app_starter/screens/InputField.dart';
import 'package:social_media_app_starter/screens/InputField2.dart';
import 'package:social_media_app_starter/screens/Profile_Page.dart';
import 'package:social_media_app_starter/screens/profile_screen.dart';

import 'Button.dart';
import 'InputField.dart';

class InputWrapper2 extends StatelessWidget {
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
            child: InputField2(),
          ),
          SizedBox(height: 40,),
          Button2(),
          SizedBox(height: 40,),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
            color: kWhiteColor,
            minWidth: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: 16,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/icons8-google-24.png",
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Sign up with Google',
                  style: TextStyle(
                    fontSize: 16,
                    color: kBlackColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilPage(),
                ),
              );
            },
            color: kFacebookColor,
            minWidth: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: 16,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/facebook_logo.png",
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Sign up with Facebook',
                  style: TextStyle(
                    fontSize: 16,
                    color: kWhiteColor,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
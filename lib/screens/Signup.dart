import 'package:flutter/material.dart';
import 'package:social_media_app_starter/InputWrapper.dart';
import 'package:social_media_app_starter/screens/Header2.dart';
import 'package:social_media_app_starter/screens/InputWrapper2.dart';

import 'Header.dart';
import 'InputWrapper.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/images/onboarding.png"),
              fit: BoxFit.fill,
            )
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Header2(),
            Expanded(child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )
              ),
              child: InputWrapper2(),
            ))

          ],
        ),
      ),
    );
  }
}
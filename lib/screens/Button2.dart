import 'package:flutter/material.dart';
import 'package:social_media_app_starter/screens/Signup.dart';

class Button2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return InkWell(
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text("Sign up",style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => SignUp(),
        ),
        );
      }
    );
  }
}
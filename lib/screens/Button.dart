import 'package:flutter/material.dart';
import 'package:social_media_app_starter/screens/user_details.dart';

class Button extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      height: 50,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        color: Colors.cyan[500],
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetails()));
        },
        child: Center(
          child: Text("Login",style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
          ),),
        ),
      ),
    );
  }
}
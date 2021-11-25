import 'package:flutter/material.dart';

class InputField2 extends StatefulWidget{
  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField2> {
  String name;
  // ignore: non_constant_identifier_names
  String Password1;
  // ignore: non_constant_identifier_names
  String Password2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey[200])
              )
          ),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Enter your email",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none
            ),
            // ignore: missing_return
            validator: (value) {
              if(value.isEmpty) {
                return "Username cannot be empty";
              }
              return null;
            },
            onChanged: (value) {
              name=value;
              setState(() {

              });
            },
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey[200])
              )
          ),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Enter your password",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none
            ),
            validator: (value) {
              if(value.isEmpty) {
                return "Password cannot be empty";
              }
              if (value.length < 3) {
                return 'Must be more than 8 charater';
              }
              return null;
            },
            onChanged: (value) {
              Password1=value;
              setState(() {

              });
            },
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey[200])
              )
          ),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Confirm your Password",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none
            ),
            validator: (value) {
              if(value.isEmpty) {
                return "Password cannot be empty";
              }
              if (value.length < 3) {
                return 'Must be more than 8 charater';
              }
              return null;
            },
            onChanged: (value) {
              Password2=value;
              setState(() {

              });
            },
          ),
        ),
      ],
    );
  }
}
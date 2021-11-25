import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({Key key}) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {

  String name, contact, education, company, about;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            SizedBox(height: 80,),
            Text('Enter your Details', style: TextStyle(
                fontSize: 30, color: Colors.white,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 30),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          TextFormField(
                            onChanged: (value) {
                              name = value;
                            },
                            decoration: InputDecoration(labelText: 'Full Name',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          TextFormField(
                            onChanged: (value) {
                              contact = value;
                            },
                            decoration: InputDecoration(labelText: 'Contact No',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          TextFormField(
                            onChanged: (value) {
                              education = value;
                            },
                            decoration: InputDecoration(labelText: 'Education',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          TextFormField(
                            onChanged: (value) {
                              company = value;
                            },
                            decoration: InputDecoration(labelText: 'Company',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          TextFormField(
                            onChanged: (value) {
                              about = value;
                            },
                            decoration: InputDecoration(labelText: 'About',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(height: 50),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            height: 50,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              color: Colors.amber,
                              onPressed: () { },
                              child: Center(
                                child: Text("Submit",style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

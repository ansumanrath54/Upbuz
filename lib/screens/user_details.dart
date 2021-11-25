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
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/feather.jpg'),
              fit: BoxFit.cover
            )
          ),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              child: Column(
                children: [
                  SizedBox(height: 60),
                  Text('Enter your Details', style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 50),
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
        ),
      ),
    );
  }
}

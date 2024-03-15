import 'package:flutter/material.dart';
import 'package:rizqfood/Sign%20in.dart';
import 'package:rizqfood/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignupPage(),
    );
  }
}

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '',
          style: TextStyle(
            color: kTextColor, // Set text color
            fontSize: 20, // Set font size
            fontWeight: FontWeight.bold, // Set font weight
          ),
        ),
        backgroundColor: kBackgroundColor, // Set background color
        elevation: 0, // Remove elevation
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        color: kBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 120, // Adjust the width as needed
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Implement Google sign-up
                      },
                      icon: Icon(Icons.android, size: 24), // Adjust icon size
                      label: Text(''),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: koutline), // Set outline color
                        backgroundColor: kfill,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Implement Facebook sign-up
                    },
                    icon: Icon(Icons.facebook, size: 24), // Adjust icon size
                    label: Text(''),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: koutline), // Set outline color
                      backgroundColor: kfill,
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Implement Apple sign-up
                    },
                    icon: Icon(Icons.apple, size: 24), // Adjust icon size
                    label: Text(''),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: koutline), // Set outline color
                      backgroundColor: kfill,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: koutline),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: koutline),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: koutline),
              ),
              child: DropdownButtonFormField(
                items: [
                  DropdownMenuItem(
                    child: Text('Donator'),
                    value: 'Donator',
                  ),
                  DropdownMenuItem(
                    child: Text('Organization'),
                    value: 'Organization',
                  ),
                ],
                onChanged: (value) {
                  // Handle user type selection
                },
                decoration: InputDecoration(
                  labelText: 'User Type',
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: InputBorder.none,
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SigninPage()
                    )
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kTextColor,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // BorderRadius
                ),
                padding: EdgeInsets.symmetric(vertical: 16.0), // Padding
                textStyle: TextStyle(
                  fontSize: 18.0, // Text size
                  color: koutline,
                ),
              ),
              child: Text('Sign In'),
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? "),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SigninPage()
                        )
                    );
                  },
                  child: Text('Sign In'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

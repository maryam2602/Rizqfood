import 'package:flutter/material.dart';
import 'package:rizqfood/color.dart';
import 'package:rizqfood/forgetpassword.dart';
import 'package:rizqfood/verification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ForgetPasswordEmailPage(),
    );
  }
}

class ForgetPasswordEmailPage extends StatelessWidget {
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
        width: double.infinity, // Make container full width
        height: double.infinity, // Make container full height
        padding: EdgeInsets.all(20.0),
        color: kBackgroundColor, // Set background color for the entire screen
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Forget Password',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kTextColor,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'We will send you a reset link to your email',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress, // Use email keyboard type
              decoration: InputDecoration(
                labelText: 'Email Address', // Change label text
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                     Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgetPasswordPage()),
                );
                  },
                  child: Text(
                    'Phone number',
                    style: TextStyle(
                      color: kTextColor, 
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VerificationPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kTextColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.symmetric(vertical: 16.0),
                textStyle: TextStyle(
                  fontSize: 18.0,
                  color: koutline,
                ),
              ),
              child: Text('Send'), // Change button text
            ),
          ],
        ),
      ),
    );
  }
}

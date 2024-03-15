import 'package:flutter/material.dart';
import 'package:rizqfood/color.dart';
import 'package:rizqfood/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcomescreen3(),
    );
  }
}

class Welcomescreen3 extends StatefulWidget {
  const Welcomescreen3({Key? key}) : super(key: key);

  @override
  State<Welcomescreen3> createState() => _Welcomescreen3State();
}

class _Welcomescreen3State extends State<Welcomescreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: kBackgroundColor, // Set background color to orange
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add image above the button
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Image.asset(
                    'assets/images/bg3.png', // Replace with your image path
                    width: 280, // Adjust width as needed
                    height: 280, // Adjust height as needed
                  ),
                ),

                // Add space between image and text
                SizedBox(height: 20),

                // First text widget with multiple spans
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 18.0, // Adjust the font size as needed
                      color: Colors.black, // Adjust the text color as needed
                    ),
                    children: [
                      TextSpan(
                        text: 'Be a  ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'Catalyst', // Your first text
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:  Colors.black,
                          fontSize: 20.0,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),

                // Second text widget with multiple spans
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 18.0, // Adjust the font size as needed
                      color: Colors.black, // Adjust the text color as needed
                    ),
                    children: [
                      TextSpan(
                        text: 'for', // Your third text
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      TextSpan(
                        text: ' Change', // Your fourth text
                        style: TextStyle(
                          color:  Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                // Add space between text and button
                SizedBox(height: 20),

                // Third text widget
                Text(
                  'Find ways to help: donate food, volunteer, or support our cause to fight hunger actively.', // Your fifth text
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0, // Adjust the font size as needed
                    color: kTextColor, // Adjust the text color as needed
                  ),
                ),

                // Add space between text and button
                SizedBox(height: 20),

                // Get Started Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignupPage()
                        )
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Adjust the border radius as needed
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0), // Adjust the padding as needed
                    backgroundColor: kTextColor, // Set button background color to transparent
                  ),
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 16.0, // Adjust the font size as needed
                      color: kBackgroundColor, // Adjust the text color as needed
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

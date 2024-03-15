import 'package:flutter/material.dart';
import 'package:rizqfood/color.dart';
import 'package:rizqfood/welcomescreen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcomescreen(),
    );
  }
}

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({Key? key}) : super(key: key);

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
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
                    'assets/images/bg1.png', // Replace with your image path
                    width: 280, // Adjust width as needed
                    height: 280, // Adjust height as needed
                  ),
                ),

                // Add space between image and text
                SizedBox(height: 20),

                // Add first text widget with multiple spans
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 18.0, // Adjust the font size as needed
                      color: Colors.black, // Adjust the text color as needed
                    ),
                    children: [
                      TextSpan(
                        text: 'Fighting ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'Hunger', // Your first text
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:  Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),

                // Add space between text and button
                SizedBox(height: 15),

                // Separate text widget with styling used in 3rd text span
                Text(
                  'Together', // Your third text
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0, // Adjust the font size as needed
                    color: Colors.black,
                  ),
                ),

                // Add space between text and button
                SizedBox(height: 20),

                // Add second text widget
                Text(
                  'Join us in linking surplus food to those in need, combating waste and hunger locally.', // Your second text
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
                        MaterialPageRoute(builder: (context) => Welcomescreen2()
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
                      fontWeight: FontWeight.bold,
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

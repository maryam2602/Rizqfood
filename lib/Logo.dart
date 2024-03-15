import 'package:flutter/material.dart';
import 'package:rizqfood/color.dart';
import 'package:rizqfood/welcomescreen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                    'assets/images/logo.png', // Replace with your image path
                    width: 200, // Adjust width as needed
                    height: 200, // Adjust height as needed
                  ),
                ),

                // Get Started Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Welcomescreen()
                        )
                    );

                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0), // Adjust the padding as needed
                    backgroundColor: kTextColor, // Set button background color to transparent
                  ),
                  child: const Text(
                    'Get Started',
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

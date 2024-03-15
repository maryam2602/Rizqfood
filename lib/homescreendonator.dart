import 'package:flutter/material.dart';
import 'package:rizqfood/color.dart';
import 'package:rizqfood/Adddonation.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreenDonator(),
    );
  }
}

class HomeScreenDonator extends StatelessWidget {
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
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: kBackgroundColor, // Set background color for the entire screen
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome To',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 4),
            RichText(
  text: TextSpan(
    style: TextStyle(
      fontSize: 16,
      color: kTextColor,
    ),
    children: [
      TextSpan(
        text: 'Riz',
        style: TextStyle(
          fontSize: 25,
          color: kTextColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      TextSpan(
        text: 'Q',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: kfill,
        ),
      ),
      TextSpan(
        text: 'Food',
        style: TextStyle(
          fontSize: 25,
          color: kTextColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
),
            Text(
              'Share Your Bites',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Rage Italic',
              ),
            ),
            Image(
  image: AssetImage('assets/images/frame.png'),
  width: 400,
  height: 180,
),


// Buttons.
SizedBox(height: 20,),

       Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    InkWell(
      onTap: () {
        // Add your onTap logic here
      },
      child: Stack(
        children: [
          Container(
            width: 170,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kcontainer,
            ),
          ),
          Positioned(
            top: 10,
            left: 12,
            child: Text(
              'Notifications',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            right: 8,
            child: Image.asset(
              'assets/images/notification1.png',
              width: 110, // Adjust size as needed
              height: 100,
            ),
          ),
        ],
      ),
    ),
    SizedBox(width: 33),
    InkWell(
      onTap: () {
        // Add your onTap logic here
      },
      child: Stack(
        children: [
          Container(
            width: 170,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kcontainer,
            ),
          ),
          Positioned(
            top: 10,
            left: 12,
            child: Text(
              'Articles',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            right: 8,
            child: Image.asset(
              'assets/images/article.png',
              width: 110, // Adjust size as needed
              height: 100,
            ),
          ),
        ],
      ),
    ),
  ],
),


          ],
        ),
      ),
      //Navigation bar//
   bottomNavigationBar: BottomAppBar(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      GestureDetector(
        onTap: () {
          // Handle onPressed event
        },
        child: Image.asset(
          'assets/icons/homef.png',
          width: 50,
          height: 50,
          fit: BoxFit.contain, // Adjust the fit property
        ),
      ),
      GestureDetector(
        onTap: () {
          // Handle onPressed event
        },
        child: Image.asset(
          'assets/icons/menu.png',
          width: 50,
          height: 50,
          fit: BoxFit.contain, // Adjust the fit property
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddDonation()),
                );
        },
        child: Image.asset(
          'assets/icons/cart.png',
          width: 50,
          height: 50,
          fit: BoxFit.contain, // Adjust the fit property
        ),
      ),
      GestureDetector(
        onTap: () {
          // Handle onPressed event
        },
        child: Image.asset(
          'assets/icons/person.png',
          width: 50,
          height: 50,
          fit: BoxFit.contain, // Adjust the fit property
        ),
      ),
    ],
  ),
),


    );
  }
}

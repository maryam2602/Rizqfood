import 'package:flutter/material.dart';
import 'package:rizqfood/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddDonation(),
    );
  }
}

class AddDonation extends StatefulWidget {
  @override
  _AddDonationState createState() => _AddDonationState();
}

class _AddDonationState extends State<AddDonation> {
  int selectedOptionIndex = -1; // Initialize selectedOptionIndex
  List<int> selectedIndexes = []; // Initialize list to hold selected indexes
  double _quantity = 1; // Initial quantity value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Donation'),
        centerTitle: true, // Center align the app bar title
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(50), // Adjust border radius here
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: kBackgroundColor, // Set orange color for the background
        ),
        padding: EdgeInsets.all(6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Type',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Start of options for selection 1
                  buildOption(0, 'Short Shelf-Life', kTextColor),
                  SizedBox(width: 10),
                  buildOption(1, 'Non Perishable', kTextColor),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    radius: 30,
                    child: IconButton(
                      icon: Icon(Icons.camera_alt, color: Colors.white),
                      onPressed: () {
                        _showPicker(context);
                      },
                    ),
                  ),
                  // End of options for selection 1
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: buildSelectableOption(2, 'Beverages'),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: buildSelectableOption(3, 'Cooked Food'),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: buildSelectableOption(4, 'Fruits & Vegetables'),
                ),
              ],
            ),
            SizedBox(height: 20), // Add spacing between the options and the quantity bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text(
                    'Quantity:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10), // Add spacing between the text and the circle
                  Container(
                    width: 40, // Set the width of the circle container
                    height: 40, // Set the height of the circle container
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Make the container circular
                      border: Border.all(color: Colors.black), // Add border to represent the circle
                    ),
                    child: Center(
                      child: Icon(
                        Icons.person,
                        size: 20,
                        color: Colors.black, // Set color of the person icon
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 200,
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.brown, // Set active track color to brown
                        inactiveTrackColor: Colors.brown.withOpacity(0.3), // Set inactive track color to brown with opacity
                        trackShape: RectangularSliderTrackShape(),
                        trackHeight: 4.0,
                        thumbColor: Colors.brown, // Set thumb color to brown
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayColor: Colors.brown.withOpacity(0.3),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                      ),
                      child: Slider(
                        value: _quantity,
                        min: 1,
                        max: 100,
                        divisions: 99,
                        onChanged: (value) {
                          setState(() {
                            _quantity = value;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOption(int index, String text, Color color) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedOptionIndex = index; // Update the selected option index
        });
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: selectedOptionIndex == index ? color : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: koutline,
            width: 2,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: selectedOptionIndex == index ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget buildSelectableOption(int index, String text) {
    final isSelected = selectedIndexes.contains(index);

    return InkWell(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedIndexes.remove(index);
          } else {
            selectedIndexes.add(index);
          }
        });
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: isSelected ? kTextColor : kBackgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: koutline,
            width: 2,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  void _showPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                  leading: new Icon(Icons.photo_library),
                  title: new Text('Photo Library'),
                  onTap: () {
                    // Handle picking image from the photo library
                    Navigator.of(context).pop();
                  },
                ),
                new ListTile(
                  leading: new Icon(Icons.photo_camera),
                  title: new Text('Camera'),
                  onTap: () {
                    // Handle taking picture from camera
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

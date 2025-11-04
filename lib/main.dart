import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// Step 1: Start your app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorChanger(),
    );
  }
}

// Step 2: Make your ColorChanger screen
class ColorChanger extends StatefulWidget {
  @override
  _ColorChangerState createState() => _ColorChangerState();
}

// Step 3: Create State (where things change)
class _ColorChangerState extends State<ColorChanger> {
  // Variable to hold the current color
  Color myColor = Colors.white;

  // Function to change color
  void changeColor() {
    setState(() {
      // pick random color every second
      myColor = Colors.primaries[DateTime.now().second % Colors.primaries.length];
    });
  }

  // Step 4: Build the screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor,
      appBar: AppBar(
        title: Text('🎨 Color Changer App'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: changeColor,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          ),
          child: Text('Tap to Change Color 💫', style: TextStyle(fontSize: 18, color: Colors.white)),
        ),
      ),
    );
  }
}

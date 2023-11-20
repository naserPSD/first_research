import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Naser Bin Hossain CV',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyCV(),
    );
  }
}

class MyCV extends StatelessWidget {
  const MyCV({Key? key}) : super(key: key);

  Widget _buildTitle(String title) {
    return Container(
      color: const Color.fromARGB(255, 21, 63, 97),
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        textAlign: TextAlign.right,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Add an image at the top
            Image.asset(
              'images/profile.png', // Replace with your image URL
              height: 100.0, // Set the desired height
              width: 100.0, // Take the full width of the screen
              fit: BoxFit.cover, // Adjust the image's position and size
              alignment: Alignment.topRight,
            ),

            // Other widgets below the image
            SizedBox(height: 8.0),
            _buildTitle('MD NASER BIN HOSSAIN'),
            SizedBox(height: 8.0),
            Text('Computer Science Engineer'),
            SizedBox(height: 16.0),
            _buildTitle('EXPERIENCE'),
            Text(
              'Intern at Information Technology (IT) Department at Fair Electronics Limited, Dhaka-Banani',
            ),
            SizedBox(height: 16.0),
            _buildTitle('EDUCATION'),
            Text(
              'Bachelor of Computer Science and Engineering\n2019-2023 (CGPA-3.25)',
            ),
            Text('North South University'),
            SizedBox(height: 16.0),
            // Add other sections (Soft Skills, Expertise, Projects, etc.) similarly
            // ...

            _buildTitle('CONTACT'),
            Text('Email: naser.hossain04@gmail.com'),
            Text('Phone: +880 1749-051692'),
            SizedBox(height: 16.0),
            // Add other sections (Languages, Hobbies, etc.) similarly
            // ...

            _buildTitle('EXTRA-CURRICULAR ACTIVITIES'),
            Text(
              "In 2019, I joined Alor Dhara Society, a non-profit student-centered organization providing basic needs like education,",
            ),
            Text(
              "clothing, and food to impoverished individuals. As Center Executive, I work towards making the world beautiful.",
            ),
          ],
        ),
      ),
    );
  }
}

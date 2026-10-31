import 'package:flutter/material.dart';

class profilepage extends StatelessWidget {
  const profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        SizedBox(height: 16),
        Center(
          child: CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('assets/pic.jfif'),
          ),
        ),
        SizedBox(height: 16),
        Text(
          "Your Name",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(
          "Software Developer",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 16),
        Text(
          "I am a passionate student who loves building mobile apps and solving problems.",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
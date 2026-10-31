import 'package:flutter/material.dart';

class skillspage extends StatelessWidget {
  skillspage({super.key});

  final List<String> technical = ["Flutter", "Dart", "Python", "Git", "SQL"];
  final List<String> soft = ["Teamwork", "Communication", "Time management"];

  // Skill bars: names and levels (0.0 to 1.0) in the same order
  final List<String> barnames = ["Flutter", "Python", "Git"];
  final List<double> barlevels = [0.7, 0.8, 0.6];

  // Makes a chip for every word in a list
  List<Widget> makechips(List<String> words) {
    List<Widget> chips = [];
    for (int i = 0; i < words.length; i++) {
      chips.add(Chip(label: Text(words[i])));
    }
    return chips;
  }

  // Makes a name and a bar for every skill
  List<Widget> makebars() {
    List<Widget> bars = [];
    for (int i = 0; i < barnames.length; i++) {
      bars.add(Text(barnames[i]));
      bars.add(SizedBox(height: 4));
      bars.add(LinearProgressIndicator(value: barlevels[i]));
      bars.add(SizedBox(height: 14));
    }
    return bars;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        Text(
          "Technical Skills",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Wrap(spacing: 8, runSpacing: 8, children: makechips(technical)),
        SizedBox(height: 24),
        Text(
          "Soft Skills",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Wrap(spacing: 8, runSpacing: 8, children: makechips(soft)),
        SizedBox(height: 24),
        Text(
          "Skill Levels",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: makebars(),
        ),
      ],
    );
  }
}
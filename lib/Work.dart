import 'package:flutter/material.dart';

class workpage extends StatelessWidget {
  workpage({super.key});

  final List<String> titles = ["web developer", "Class Project Lead"];
  final List<String> companies = ["voting web", "Voting app"];
  final List<String> dates = ["2025 - 2026", "2024 - 2025"];
  final List<String> descriptions = [
    "Personal project",
    "Led a team of 4 to build a school project.",
  ];

  List<Widget> makecards() {
    List<Widget> cards = [];
    for (int i = 0; i < titles.length; i++) {
      cards.add(
        Card(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titles[i],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(companies[i] + " | " + dates[i]),
                SizedBox(height: 6),
                Text(descriptions[i]),
              ],
            ),
          ),
        ),
      );
    }
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];
    items.add(
      Text(
        "Work Experience",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
    items.add(SizedBox(height: 12));
    items.addAll(makecards());

    return ListView(
      padding: EdgeInsets.all(16),
      children: items,
    );
  }
}
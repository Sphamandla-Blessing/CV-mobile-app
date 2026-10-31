import 'package:flutter/material.dart';

class educationpage extends StatelessWidget {
  educationpage({super.key});

  final List<String> degrees = ["BSc Information Technology", "Certificate in Flutter"];
  final List<String> schools = ["Limkokwing University", "Online Course"];
  final List<String> years = ["2025 - 2029", "2026"];

  List<Widget> makecards() {
    List<Widget> cards = [];
    for (int i = 0; i < degrees.length; i++) {
      cards.add(
        Card(
          child: ListTile(
            leading: Icon(Icons.school),
            title: Text(degrees[i]),
            subtitle: Text(schools[i] + "  |  " + years[i]),
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
        "Education & Certifications",
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
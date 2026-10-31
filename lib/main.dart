import 'package:flutter/material.dart';
import 'Assets.dart';
import 'Contact.dart';
import 'Skill.dart';
import 'Work.dart';
import 'Education.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int currentindex=0;
  final List<Widget> list=[
    profilepage(),
    contactpage(),
    skillspage(),
    workpage(),
    educationpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mobile CV App"),),
      body: Column(
        children: [
          Expanded(child: list[currentindex]),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        onTap: (index){
          setState(() {
            currentindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.contacts), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.architecture), label: "Skills"),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: "Work"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "Education"),
        ],
      ),
    );
  }
}
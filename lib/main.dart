import 'package:dpisd_gpa/grades.dart';
import 'package:dpisd_gpa/calculator.dart';
import 'package:dpisd_gpa/about.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dpMaroon = Color.fromRGBO(115, 41, 68, 1.0);

    return CupertinoApp(
      title: 'DPISD GPA Calculator',
      home: Main(),
      theme: CupertinoThemeData(primaryColor: dpMaroon),
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.number_circle),
            activeIcon: Icon(CupertinoIcons.number_circle_fill),
            label: 'Grades',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.equal_circle),
            activeIcon: Icon(CupertinoIcons.equal_circle_fill),
            label: 'Calculator',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.info_circle),
            activeIcon: Icon(CupertinoIcons.info_circle_fill),
            label: 'About',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return GradePage();
          case 1:
            return Calculator();
          case 2:
            return About();
          default:
            return GradePage();
        }
      },
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text("Grades"),
          )
        ];
      },
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: GradeArea(),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("test"),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("test"),
            )
          ]),
    ));
  }
}

class GradeArea extends StatefulWidget {
  @override
  State createState() => GradeEntry();
}

class GradeEntry extends State<GradeArea> {
  final Map<int, Widget> children = const {
    0: Text('Freshman'),
    1: Text('Sophomore'),
    2: Text('Junior'),
    3: Text('Senior'),
  };

  int? currentValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoSlidingSegmentedControl<int>(
        children: children,
        onValueChanged: (int? newValue) {
          setState(() {
            currentValue = newValue;
          });
        },
        groupValue: currentValue,
      ),
    );
  }
}

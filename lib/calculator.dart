import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text("Calculator"),
          )
        ];
      },
      body: Center(
        child: Text("This page will contain calculator toggles"),
      ),
    ));
  }
}

class Calculate {}

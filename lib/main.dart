import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDice = 5;

    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                print('Left Button Pressed');
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                print('Right Button Pressed');
              },
              child: Image.asset('images/dice2.png'),
            ),
          ),
        ),
      ]),
    );
  }
}

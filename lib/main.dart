// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';

import './text.dart';
import './textControl.dart';

void main() {
  runApp(MyExerciseApp());
}

class MyExerciseApp extends StatefulWidget {
  @override
  _MyExerciseAppState createState() => _MyExerciseAppState();
}

class _MyExerciseAppState extends State<MyExerciseApp> {
  final _myText = const [
    'Welcome to my app!',
    'My name is Riky',
    'I am really enjoying this course!',
    'I am studying for a potential job.',
    'I can\'t wait to make many apps.',
  ];

  var _textIndex = 0;

  changingText() {
    setState(() {
      _textIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My Exercise App'),
          ),
          body: _textIndex < _myText.length
              ? MyText(_myText, _textIndex, changingText)
              : TheEnd()),
    );
  }
}

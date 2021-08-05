import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final List myText;
  final int textIndex;
  final Function changingText;

  MyText(this.myText, this.textIndex, this.changingText);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            myText[textIndex],
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          onPressed: changingText,
          child: Text('Find out more'),
        ),
      ],
    );
  }
}

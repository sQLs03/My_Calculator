import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final colorButton;
  final double textSize;
 final Function callback;

  const CalculatorButton(
      this.text,
      this.textSize,
      this.colorButton,
      this.callback,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1),
      child: SizedBox(
      height: 100,
      width: 100,
      child: TextButton(
        child: Text(text),
        style: TextButton.styleFrom(
          primary: colorButton,
          backgroundColor: Colors.white,
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
          onPressed: () => callback(text),
        ),
      ),
    );
  }
}


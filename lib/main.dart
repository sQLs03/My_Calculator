import 'package:flutter/material.dart';
import './widgets/calculatorWidgets.dart';


void main() => runApp(CalculactorApp());

class CalculactorApp extends StatefulWidget {
  CalculactorApp({Key? key}) : super(key : key);

  @override
  _CalculactorAppState createState() => _CalculactorAppState();
}

class _CalculactorAppState extends State<CalculactorApp> {
  int firstNum = 0;
  int secondNum = 0;
  String history = '';
  String textToDisplay = '';
  String res = '';
  String operation = '';

  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if(btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    }  else if(btnVal == '+' || btnVal == '-' || btnVal == 'x' || btnVal == '/') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if(btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history = firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history = firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'x') {
        res = (firstNum * secondNum).toString();
        history = firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history = firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculactor',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Misha Pidor'),),
        backgroundColor: Color(0xFF808080),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    history,
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0x66FFFFFF),
                      ),
                  )
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    textToDisplay,
                    style: TextStyle(
                        fontSize: 48,
                      color: Colors.white,
                      ),
                  ),
                ),
                  alignment: Alignment(1.0, 1.0),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton('AC',  50.0, Colors.deepOrange, btnOnClick),
                  CalculatorButton('C', 50.0, Colors.deepOrange, btnOnClick),
                  CalculatorButton('<', 50.0, Colors.deepOrange, btnOnClick),
                  CalculatorButton('/', 50.0, Colors.deepOrange, btnOnClick),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton('9', 50.0, Colors.cyan, btnOnClick),
                  CalculatorButton('8', 50.0, Colors.cyan, btnOnClick),
                  CalculatorButton('7', 50.0, Colors.cyan, btnOnClick),
                  CalculatorButton('x', 50.0, Colors.deepOrange, btnOnClick),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton('6', 50.0, Colors.cyan, btnOnClick),
                  CalculatorButton('5', 50.0, Colors.cyan, btnOnClick),
                  CalculatorButton('4', 50.0, Colors.cyan, btnOnClick),
                  CalculatorButton('-', 50.0, Colors.deepOrange, btnOnClick),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton('3', 50.0, Colors.cyan, btnOnClick),
                  CalculatorButton('2', 50.0, Colors.cyan, btnOnClick),
                  CalculatorButton('1', 50.0, Colors.cyan, btnOnClick),
                  CalculatorButton('+', 50.0, Colors.deepOrange, btnOnClick),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton('+/-', 50.0, Colors.cyan, btnOnClick),
                  CalculatorButton('0', 50.0, Colors.cyan, btnOnClick),
                  CalculatorButton('000', 50.0, Colors.cyan, btnOnClick),
                  CalculatorButton('=', 50.0, Colors.deepOrange, btnOnClick),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}





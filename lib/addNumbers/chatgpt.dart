import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCalculatorApp(),
    );
  }
}

class MyCalculatorApp extends StatefulWidget {
  @override
  _MyCalculatorAppState createState() => _MyCalculatorAppState();
}

class _MyCalculatorAppState extends State<MyCalculatorApp> {
  TextEditingController _firstNumberController = TextEditingController();
  TextEditingController _secondNumberController = TextEditingController();
  double _result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App (Double)'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _firstNumberController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(labelText: 'Enter the first number'),
            ),
            TextField(
              controller: _secondNumberController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(labelText: 'Enter the second number'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    calculateResult(Operation.Addition);
                  },
                  child: Text('Add'),
                ),
                ElevatedButton(
                  onPressed: () {
                    calculateResult(Operation.Subtraction);
                  },
                  child: Text('Subtract'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text('Result: $_result'),
          ],
        ),
      ),
    );
  }

  void calculateResult(Operation operation) {
    double firstNumber = double.tryParse(_firstNumberController.text) ?? 0.0;
    double secondNumber = double.tryParse(_secondNumberController.text) ?? 0.0;

    double result = 0.0;
    if (operation == Operation.Addition) {
      result = firstNumber + secondNumber;
    } else if (operation == Operation.Subtraction) {
      result = firstNumber - secondNumber;
    }

    setState(() {
      _result = result;
    });
  }
}

enum Operation { Addition, Subtraction }

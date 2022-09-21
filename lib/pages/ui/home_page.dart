import 'package:calculator_app/pages/widgets/calculator_button.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String screenText = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  screenText,
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          GridView.count(
            padding: EdgeInsets.all(0),
            shrinkWrap: true,
            crossAxisCount: 4,
            children: [
              CalculatorButton(
                onTap: () {
                  setState(() {
                    screenText = '0';
                  });
                },
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: 'C',
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '+/-',
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '%',
              ),
              CalculatorButton.Icon(
                onTap: () {
                  setState(() {
                    if (screenText == '0' ||
                        screenText == '' ||
                        screenText.length == 1) {
                      screenText = '0';
                    } else {
                      screenText =
                          screenText.substring(0, screenText.length - 1);
                    }
                  });
                },
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: 'Backspace',
                icon: Icons.backspace,
              ),
              CalculatorButton(
                onTap: () {
                  pressNumber(7);
                },
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '7',
              ),
              CalculatorButton(
                onTap: () {
                  pressNumber(8);
                },
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '8',
              ),
              CalculatorButton(
                onTap: () {
                  pressNumber(9);
                },
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '9',
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '/',
              ),
              CalculatorButton(
                onTap: () {
                  pressNumber(4);
                },
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '4',
              ),
              CalculatorButton(
                onTap: () {
                  pressNumber(5);
                },
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '5',
              ),
              CalculatorButton(
                onTap: () {
                  pressNumber(6);
                },
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '6',
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: 'x',
              ),
              CalculatorButton(
                onTap: () {
                  pressNumber(1);
                },
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '1',
              ),
              CalculatorButton(
                onTap: () {
                  pressNumber(2);
                },
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '2',
              ),
              CalculatorButton(
                onTap: () {
                  pressNumber(3);
                },
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '3',
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '-',
              ),
              CalculatorButton(
                onTap: () {
                  pressNumber(0);
                },
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '0',
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '.',
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '=',
              ),
              CalculatorButton(
                onTap: () {},
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '+',
              ),
            ],
          ),
        ],
      ),
    );
  }

  void pressNumber(int number) {
    setState(() {
      if (screenText == '0') {
        screenText = '$number';
      } else {
        screenText = '$screenText$number';
      }
    });
  }
}

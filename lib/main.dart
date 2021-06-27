import 'package:flutter/material.dart';
import 'package:productivity_timer/widgets.dart';
import './widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Work Timer',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: TimerHomePage(),
    );
  }
}

class TimerHomePage extends StatelessWidget {
  final double defaultPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My work timer'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double availableWidth = constraints.maxWidth;
          return Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(defaultPadding),
                  ),
                  Expanded(
                    child: ProductivityButton(
                      color: Color(0xff009688),
                      text: 'Work',
                      onPressed: emptyMethod,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(defaultPadding),
                  ),
                  Expanded(
                    child: ProductivityButton(
                      color: Color(0xff607D8B),
                      text: 'Short break',
                      onPressed: emptyMethod,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(defaultPadding),
                  ),
                  Expanded(
                    child: ProductivityButton(
                      color: Color(0xff455A64),
                      text: 'Long break',
                      onPressed: emptyMethod,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(defaultPadding),
                  ),
                ],
              ),
              Expanded(
                child: Text('hello'),
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(defaultPadding)),
                  Expanded(
                    child: ProductivityButton(
                      color: Color(0xff212121),
                      text: 'Stop',
                      onPressed: emptyMethod,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(defaultPadding)),
                  Expanded(
                    child: ProductivityButton(
                      color: Color(0xff009688),
                      text: 'Restart',
                      onPressed: emptyMethod,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(defaultPadding)),
                ],
              )
            ],
          );
        },
      ),
    );
  }

  void emptyMethod() {}
}

import 'package:flutter/material.dart';

class SliderApp extends StatelessWidget {
  const SliderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: sliderfont(),
    );
  }
}

class sliderfont extends StatefulWidget {
  const sliderfont ({super.key});

  @override
  State<Slider> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<Slider> {
  double _value = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text('Slider')),
      body: SliderTheme(
        data:  const SliderThemeData(   
        ),                   
        child: Container(
          width: 320,
          child: Slider(
            max: 10,
            divisions: 4,
            value: _value,
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          ),
        ),
      ),
    );
  }
}

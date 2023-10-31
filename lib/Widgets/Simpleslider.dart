// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SimpleSlider extends StatefulWidget {
  const SimpleSlider({super.key});

  @override
  State<SimpleSlider> createState() => _SimpleSliderState();
}

class _SimpleSliderState extends State<SimpleSlider> {
  double _currentvalue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Slider(
                min: 0,
                max: 10,
                divisions: 10,
                label: _currentvalue.toString(),
                value: _currentvalue,
                onChanged: (value) {
                  setState(() {
                    _currentvalue = value;
                  });
                })
          ],
        ),
      ),
    );
  }
}

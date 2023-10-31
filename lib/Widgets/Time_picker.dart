// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 10);
  void _selectedTime() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(' time Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(_timeOfDay.format(context).toString(),
                style: TextStyle(
                  fontSize: 40,
                )),
            MaterialButton(
              color: Colors.blue,
              onPressed: _selectedTime,
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  '_showtimepicker',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: file_names, camel_case_types, duplicate_ignore

import 'package:flutter/material.dart';

// ignore: camel_case_types
class DateTime_Picker extends StatefulWidget {
  const DateTime_Picker({super.key});

  @override
  State<DateTime_Picker> createState() => _DateTime_PickerState();
}

class _DateTime_PickerState extends State<DateTime_Picker> {
  
  void _selectedDate() {
    showDatePicker(
        context: context,
        initialDate: DateTime(2000),
        firstDate: DateTime(2000),
        lastDate: DateTime(2023));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Date time Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('_DateTime.month.toString()',
                style: TextStyle(
                  fontSize: 40,
                )),
            MaterialButton(
              color: Colors.blue,
              onPressed: _selectedDate,
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  'Select date',
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

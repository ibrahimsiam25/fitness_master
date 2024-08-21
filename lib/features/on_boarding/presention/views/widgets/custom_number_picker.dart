import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class CustomNumberPicker extends StatefulWidget {
  const CustomNumberPicker({super.key});

  @override
  State<CustomNumberPicker> createState() => _CustomNumberPickerState();
}

class _CustomNumberPickerState extends State<CustomNumberPicker> {
   int _currentValue = 3;
  @override
  Widget build(BuildContext context) {
    return      Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // Black background
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(13.0),
                ),
                width: 100,  // Set width to match the NumberPicker
                height: 60, // Set height to fit the NumberPicker
              ),
            ),
            // NumberPicker
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                NumberPicker(
                  selectedTextStyle:const TextStyle(color: Colors.white, fontSize: 24),
                  textStyle:const TextStyle(color: Colors.white),
                  value: _currentValue,
                  minValue: 0,
                  maxValue: 100,
                  onChanged: (value) => setState(() => _currentValue = value),
                ),
              ],
            ),
          ],
        );
  }
}
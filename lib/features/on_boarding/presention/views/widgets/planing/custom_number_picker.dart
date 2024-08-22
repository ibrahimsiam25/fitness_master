import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:numberpicker/numberpicker.dart';

class CustomNumberPicker extends StatefulWidget {
  const CustomNumberPicker({
    super.key,
    required this.currentValue,
    required this.maxValue,
    required this.minValue,
  });

  final int currentValue;
  final int maxValue;
  final int minValue;

  @override
  State<CustomNumberPicker> createState() => _CustomNumberPickerState();
}

class _CustomNumberPickerState extends State<CustomNumberPicker> {
  late int _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.currentValue;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        _buildBackground(),
        _buildNumberPicker(),
      ],
    );
  }

  Widget _buildBackground() {
    return Positioned(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(13.0.r),
        ),
        width: 77.0.w,
        height: 46.0.h,
      ),
    );
  }

  Widget _buildNumberPicker() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        NumberPicker(
          selectedTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
          textStyle: const TextStyle(color: Colors.white),
          value: _currentValue,
          minValue: widget.minValue,
          maxValue: widget.maxValue,
          onChanged: (value) => setState(
            () => _currentValue = value,
          ),
        ),
      ],
    );
  }
}

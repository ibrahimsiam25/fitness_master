import 'package:flutter/material.dart';

class CustomBottomNavBarSelectedIcon extends StatelessWidget {
  final Widget child;
  const CustomBottomNavBarSelectedIcon({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}

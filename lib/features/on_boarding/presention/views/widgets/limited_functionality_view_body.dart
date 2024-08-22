import 'premium_row.dart';
import 'package:flutter/material.dart';

class LimitedFunctionalityViewBody extends StatelessWidget {
  const LimitedFunctionalityViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const PremiumRow(),
          
        ],
      ),
    );
  }
}

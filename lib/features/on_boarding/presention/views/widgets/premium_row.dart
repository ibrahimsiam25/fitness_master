import 'package:fitness_master/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class PremiumRow extends StatelessWidget {
  const PremiumRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 32.0),
        Spacer(),
        Text(
          'Premium',
          style: AppStyles.header1,
        ),
        Spacer(),
        Icon(
          Icons.clear,
          color: Colors.white,
          size: 32,
        ),
      ],
    );
  }
}

<<<<<<< HEAD
=======
import 'package:flutter/material.dart';

>>>>>>> b45376dabd36a3547f99b5596ae71b1e03a4ba90
import 'premium_row.dart';
import 'package:flutter/material.dart';
import 'package:fitness_master/core/utils/app_styles.dart';


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
          Image.asset(''),
        ],
      ),
    );
  }
}

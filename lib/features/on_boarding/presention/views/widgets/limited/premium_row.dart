import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fitness_master/core/utils/app_router.dart';
import 'package:fitness_master/core/utils/app_styles.dart';

class PremiumRow extends StatelessWidget {
  const PremiumRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 32.0),
        const Spacer(),
        Text(
          'Premium',
          style: AppStyles.header1,
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            context.go(AppRouter.kHomeView);
          },
          child: const Icon(
            Icons.clear,
            color: Colors.white,
            size: 32,
          ),
        ),
      ],
    );
  }
}

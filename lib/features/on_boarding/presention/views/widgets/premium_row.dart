import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/app_styles.dart';



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
 
        IconButton(onPressed: (){
           GoRouter.of(context).push(AppRouter.kExercisesView);
        }, icon: Icon(Icons.chevron_right))
      ],
    );
  }
}

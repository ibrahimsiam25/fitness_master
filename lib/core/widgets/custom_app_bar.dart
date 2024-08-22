import '../utils/app_styles.dart';
import 'package:fitness_master/core/constants/const.dart';

  import 'package:flutter/material.dart';


AppBar cusyomAppBar({
    required String title,
    required Widget icon,
    required void Function()? onPressed,
  }) {
    return AppBar(
       
      title: Padding(
        padding: const EdgeInsets.only(left: kHorizontalPadding/2),
        child: Text(
          title,
          style: AppStyles.header1,
        ),
      ),
      backgroundColor: Colors.transparent,
      actions: [
        Padding(
           padding: const EdgeInsets.only(right: kHorizontalPadding/2),
          child: IconButton(icon: icon, onPressed: onPressed),
        ),
      ],
    );
  }
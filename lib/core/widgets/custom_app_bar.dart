import '../utils/app_styles.dart';
  import 'package:flutter/material.dart';


AppBar cusyomAppBar({
    required String title,
    required Widget icon,
    required void Function()? onPressed,
  }) {
    return AppBar(
      title: Text(
        title,
        style: AppStyles.header1,
      ),
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(icon: icon, onPressed: onPressed),
      ],
    );
  }
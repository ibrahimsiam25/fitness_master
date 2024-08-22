import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/constants/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.text,
    required this.pageController,
    required this.isLastPage,
  });
  final PageController pageController;
  final bool isLastPage;
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(
          flex: 8,
        ),
        SvgPicture.asset(image),
        const Spacer(
          flex: 5,
        ),
        Text(
          text,
          style: AppStyles.header1,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 40.h,
        ),
        TextButton(
            onPressed: () {
              if (isLastPage) {
                context.go(AppRouter.kPlanningView);
              } else {
                // Move to the next page
                pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              }
            },
            child: SvgPicture.asset(
              AppAssets.arrowIcon,
            )), const Spacer(
          flex: 2,
        ),
      ],
    );
  }
}

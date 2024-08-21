import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/core/constants/app_assets.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<String> images = [
    AppAssets.onBording1,
    AppAssets.onBording2,
    AppAssets.onBording3,
  ];
  List<String> texts = [
    'Exercise library',
    "Progress tracking",
    "Calorie and water tracking"
  ];
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: 3,
        controller: _pageController,
        itemBuilder: (context, index) {
          return PageViewItem(
            image: images[index],
            text: texts[index],
            pageController: _pageController,
            isLastPage: index == images.length - 1,
          );
        });
  }
}

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
        SvgPicture.asset(image),
        SizedBox(
          height: 120.h,
        ),
        Text(
          text,
          style: AppStyles.header1,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20.h,
        ),
        TextButton(
            onPressed: () {
              if (isLastPage) {
                // Print message when on the last page
                print('List Page');
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
            ))
      ],
    );
  }
}

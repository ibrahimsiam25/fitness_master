import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../core/utils/app_styles.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrobContainer extends StatefulWidget {
  const CustomDrobContainer({
    super.key,
  });

  @override
  State<CustomDrobContainer> createState() => _CustomDrobContainerState();
}

class _CustomDrobContainerState extends State<CustomDrobContainer> {
  bool isDrobed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
          color: AppColor.black,
        ),
        padding: EdgeInsets.all(12.r),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(AppAssets.fireIcon),
                Column(
                  children: [
                    Text(
                      "Weeks streak",
                      style: AppStyles.body2,
                    ),
                    Text(
                      "Keep going!",
                      style: AppStyles.body1,
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        isDrobed = !isDrobed;
                      });
                    },
                    icon: SvgPicture.asset(AppAssets.arrowDown))
              ],
            ),
            Visibility(
              visible: isDrobed,
              child: Container(
                color: Colors.black,
                child:TableCalendar(
                  daysOfWeekVisible: false,
              
  firstDay: DateTime.utc(2010, 10, 16),
  lastDay: DateTime.utc(2030, 3, 14),
  focusedDay: DateTime.now(),
),
              ),
            )
          ],
        ));
  }
}

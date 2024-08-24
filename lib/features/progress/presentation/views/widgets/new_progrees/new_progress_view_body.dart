import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../manager/add_image_controller.dart';
import '../../../../../../core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/widgets/main_button.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/core/constants/app_assets.dart';
import 'package:fitness_master/features/progress/presentation/views/widgets/new_progrees/custom_widget_dropd_dow_list.dart';

class NewProgreesViewBody extends StatelessWidget {
  const NewProgreesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    size: 30.0.r,
                    Icons.arrow_back_ios,
                    color: AppColor.white,
                  )),
              SizedBox(
                width: 16.0.w,
              ),
              Text(
                "New Progress",
                style: AppStyles.header1,
              ),
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          GetBuilder<AddImageController>(
            builder: (controller) {
              return GestureDetector(
                onTap: () => controller.uploadImage(),
                child: controller.image == null
                    ? Container(
                        width: 140.w,
                        height: 230.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0.r),
                          color: AppColor.veryDarkGray,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            AppAssets.addImage,
                            fit: BoxFit.contain,
                            width: 45,
                            height: 45,
                          ),
                        ),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(40.0.r),
                        child: Image.file(
                          width: 140.w,
                          height: 230.h,
                          controller.image!,
                          fit: BoxFit.cover, // Adjust fit as needed
                        ),
                      ),
              );
            },
          ),
          SizedBox(
            height: 24.h,
          ),
          const CustomWidgetDropDownList(),
         const Spacer(),
          MainButton(
              onTap: () {},
            color: AppColor.theme, text: "Save", textColor: AppColor.black)
          ,SizedBox(height: 20.h,)
        ],
      ),
    ));
  }
}

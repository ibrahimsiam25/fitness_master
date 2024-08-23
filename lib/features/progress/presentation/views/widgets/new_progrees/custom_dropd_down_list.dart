import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/constants/app_color.dart';
import '../../../../../../core/constants/app_assets.dart';

class CustomDropdownList extends StatefulWidget {
  final List<String> list;

  const CustomDropdownList({super.key, required this.list});

  @override
  CustomDropdownListState createState() => CustomDropdownListState();
}

class CustomDropdownListState extends State<CustomDropdownList> {
  String? selectedMuscle;

  @override
  void initState() {
    super.initState();
    selectedMuscle = widget.list[0]; // Default to the first item
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
      decoration: BoxDecoration(
        color: AppColor.veryDarkGray, // Set the background color
        borderRadius: BorderRadius.circular(10.0), // Rounded corners
      ),
      child: DropdownButton<String>(
        value: selectedMuscle,
        icon: SvgPicture.asset(AppAssets.arrowDown),
        iconSize: 24,
        underline: const SizedBox(), // Remove the underline
        onChanged: (String? newValue) {
          setState(() {
            selectedMuscle = newValue!;
          });
        },
        dropdownColor: AppColor.veryDarkGray, // Dropdown background color
        isExpanded: true, // Ensures the Row takes up the full width
        selectedItemBuilder: (BuildContext context) {
          return widget.list.map<Widget>((String value) {
            return Row(
              children: [
                Text(
                  value,
                  style: AppStyles.body400_14, // Set text color
                ),
                const SizedBox(width: 8), // Space between text and icon
              ],
            );
          }).toList();
        },
        items: widget.list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: AppStyles.body400_14, // Set text color
            ),
          );
        }).toList(),
      ),
    );
  }
}

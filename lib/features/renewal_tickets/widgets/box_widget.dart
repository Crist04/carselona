import 'package:carselona/helpers/App%20Colors/app_colors.dart';
import 'package:carselona/helpers/common_widgets.dart/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectiveContainer extends StatelessWidget {
  const SelectiveContainer({
    super.key,
    required this.text,
    this.isSelected = false,
    this.onTap,
    this.color = AppColors.whiteTextColor,
    this.selctedColor=AppColors.whiteTextColor,
  });
  final String text;
  final bool isSelected;
  final VoidCallback? onTap;
  final Color color;
  final Color selctedColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Container(
        decoration: BoxDecoration(
            color: isSelected ? selctedColor : Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: color )),
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 0.035.sw, vertical: 0.015.sh),
          child: Center(
            child: CommonText(
              text: text,
              color: color,
              fontWeight: FontWeight.w500,
              fontSize: 0.013.sh,
            ),
          ),
        ),
      ),
    );
  }
}

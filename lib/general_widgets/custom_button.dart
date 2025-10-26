import 'package:flutter/material.dart';
import 'package:verifi/core/theme/app_colors.dart';
import 'package:verifi/core/theme/textstyles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.bgColor,
      this.isEnabled,
      required this.title,
      required this.onTap});
  final Color? bgColor;
  final bool? isEnabled;
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEnabled == true ? onTap : null,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color:
              isEnabled == true ? AppColor.kBGColor : AppColor.kInactiveColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextStyles.kTitleStyle.copyWith(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:verifi/core/theme/theme_export.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.textInputType});
  final TextEditingController controller;
  final String hintText;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.kTextFieldColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextField(
        keyboardType: textInputType ?? TextInputType.text,
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(16.0),
          hintText: hintText,
        ),
      ),
    );
  }
}

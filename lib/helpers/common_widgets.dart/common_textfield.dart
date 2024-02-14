import 'package:carselona/helpers/App%20Colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  MyTextField(
      {super.key,
      required this.hinttext,
      this.isUnderlined = false,
      this.isSuffix = false,
      this.onSubmit,
      this.onChanged,
      this.textEditingController});
  final String hinttext;
  final bool isUnderlined;
  final bool isSuffix;
  TextEditingController? textEditingController;
  void Function(String)? onSubmit;
  void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      textInputAction: TextInputAction.go,
      onSubmitted: onSubmit,
      controller: textEditingController,
      cursorColor: AppColors.hintTextColor,
      decoration: InputDecoration(
        prefixIcon: isSuffix == true ? const Icon(Icons.search) : null,
        filled: true,
        fillColor: AppColors.whiteTextColor,
        enabledBorder: isUnderlined == true
            ? UnderlineInputBorder(
                borderRadius: BorderRadius.circular(2.0),
                borderSide: const BorderSide(color: AppColors.blackTextColor),
              )
            : OutlineInputBorder(
                borderRadius: BorderRadius.circular(2.0),
                borderSide: const BorderSide(color: AppColors.blackTextColor),
              ),
        focusedBorder: isUnderlined == true
            ? UnderlineInputBorder(
                borderRadius: BorderRadius.circular(2.0),
                borderSide: const BorderSide(color: AppColors.blackTextColor),
              )
            : OutlineInputBorder(
                borderRadius: BorderRadius.circular(2.0),
                borderSide: const BorderSide(color: AppColors.blackTextColor),
              ),
        hintText: hinttext,
        hintStyle: GoogleFonts.poppins(
          color: AppColors.blackTextColor,
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
      ),
    );
  }
}

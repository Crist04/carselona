import 'package:carselona/helpers/App%20Colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final Color decorationColor;
  final TextDecoration textDecoration;
  final int maxLine;
  final String fonts;
  const CommonText(
      {super.key,
      required this.text,
      this.color = Colors.black,
      this.fontSize = 14,
      this.maxLine = 10,
      this.decorationColor = AppColors.whiteTextColor,
      this.textAlign = TextAlign.start,
      this.fontWeight = FontWeight.w400,
      this.fonts = "Poppins",
      this.textDecoration = TextDecoration.none});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        overflow: TextOverflow.ellipsis,
        maxLines: maxLine,
        style: GoogleFonts.getFont(fonts,
            textStyle: TextStyle(
              decorationColor: decorationColor,
              decoration: textDecoration,
              fontSize: fontSize + 0.0025.sh,
              color: color,
              fontWeight: fontWeight,
            )));
  }
}

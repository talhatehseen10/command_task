import 'package:command_task_test/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.title,
      this.isEllipsis = false,
      this.fontWeight = FontWeight.w600,
      this.textAlign = TextAlign.left,
      this.isTextAlign = false,
      this.isFontWeightValue = false,
      this.isBodySmall = false,
      this.textOverflow,
      this.isBodyLarge = false,
      this.fontSize = 12.0,
      this.color});
  final String title;
  final bool isEllipsis;
  final bool isFontWeightValue;
  final bool isTextAlign;
  final bool isBodyLarge;
  final bool isBodySmall;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final double fontSize;
  final Color? color;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      title.tr,
      overflow: isEllipsis ? textOverflow : null,
      style: isBodyLarge
          ? context.bodyLarge.copyWith(
              color: color,
              fontSize: fontSize,
              fontWeight: isFontWeightValue ? fontWeight : FontWeight.w600)
          : isBodySmall
              ? context.bodySmall.copyWith(
                  fontWeight: isFontWeightValue ? fontWeight : FontWeight.w600,
                  fontSize: fontSize)
              : context.bodyMedium.copyWith(
                  color: color,
                  fontFamily: "Roboto",
                  fontSize: fontSize,
                  fontWeight: isFontWeightValue ? fontWeight : FontWeight.w600),
      textAlign: isTextAlign ? textAlign : TextAlign.right,
    );
  }
}

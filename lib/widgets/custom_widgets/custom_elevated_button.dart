import 'package:command_task_test/constants/constants.dart';
import 'package:command_task_test/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(
      {super.key,
      this.onPressed,
      this.mobileTextStyle,
      this.isMobile = false,
      this.height = Sizes.HEIGHT_50,
      required this.text,
      this.backgoundColor = Colors.teal,
      this.fontColor = AppColors.white,
      this.size,
      this.screenHeight,
      this.appBarHeight = 0,
      this.statusBarHeight,
      this.fontSize = Sizes.TEXT_SIZE_14,
      this.centerButtonText = true,
      this.width = Sizes.WIDTH_100, this.isBorderSide = false});

  final VoidCallback? onPressed;
  final String text;
  final TextStyle? mobileTextStyle;
  final bool isMobile;
  final Size? size;
  final Color backgoundColor;
  final Color fontColor;
  final double? screenHeight;
  final double width;
  final double fontSize;
  final bool centerButtonText;
  final double? statusBarHeight;
  final double appBarHeight;
  final double height;
  final bool isBorderSide;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, double.infinity),
            elevation: 0,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Sizes.RADIUS_6),
            ),
            side: isBorderSide ?BorderSide(
              color: context.primaryColor,
              width: 1.0,
            ): null,
            backgroundColor: backgoundColor),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: centerButtonText
              ? MainAxisAlignment.center
              : MainAxisAlignment.start,
          children: [
            Text(
              text,
              style: context.titleSmall
                          .copyWith(color: fontColor, fontSize: fontSize),
            ),
          ],
        ),
      ),
    );
  }
}

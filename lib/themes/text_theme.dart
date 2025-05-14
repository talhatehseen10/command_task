// ignore_for_file: unused_element

part of 'themes.dart';

const _superBold = FontWeight.w900;
const _bold = FontWeight.w700;
const _semiBold = FontWeight.w600;
const _medium = FontWeight.w500;
const _regular = FontWeight.w400;
const _light = FontWeight.w300;

TextTheme buildTextTheme({
  required Color textColor,
  required Color buttonColor,
}) =>
    TextTheme(
      displayLarge: TextStyle(
        fontSize: Sizes.TEXT_SIZE_96,
        color: textColor,
        fontWeight: _superBold,
        fontStyle: FontStyle.normal,
        fontFamily: AppStrings.WORK_SANS,
      ),
      displayMedium: TextStyle(
        fontSize: Sizes.TEXT_SIZE_60,
        color: textColor,
        fontWeight: _bold,
        fontStyle: FontStyle.normal,
        fontFamily: AppStrings.WORK_SANS,
      ),
      displaySmall: TextStyle(
        fontSize: Sizes.TEXT_SIZE_48,
        color: textColor,
        fontWeight: _bold,
        fontStyle: FontStyle.normal,
        fontFamily: AppStrings.WORK_SANS,
      ),
      headlineMedium: GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: Sizes.TEXT_SIZE_34,
          color: textColor,
          fontWeight: _regular,
        ),
      ),
      headlineSmall: GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: Sizes.TEXT_SIZE_24,
          color: textColor,
        ),
      ),
      titleLarge: GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: Sizes.TEXT_SIZE_24,
          color: textColor,
          fontWeight: _bold,
        ),
      ),
      titleMedium: GoogleFonts.roboto(
          textStyle: TextStyle(
        fontSize: Sizes.TEXT_SIZE_16,
        color: textColor,
        fontWeight: _semiBold,
      )),
      titleSmall: GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: Sizes.TEXT_SIZE_14,
          color: textColor,
          fontWeight: _semiBold,
          // fontStyle: FontStyle.normal,
          // fontFamily: AppStrings.WORK_SANS,
        ),
      ),
      bodyLarge: GoogleFonts.roboto(
          textStyle: TextStyle(
        fontSize: Sizes.TEXT_SIZE_16,
        color: textColor,
      )),
      bodyMedium: GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: Sizes.TEXT_SIZE_14,
          color: textColor,
          //fontWeight: _light,
        ),
      ),
      bodySmall: GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: Sizes.TEXT_SIZE_12,
          color: textColor,
        ),
      ),
      labelLarge: TextStyle(
        fontSize: Sizes.TEXT_SIZE_14,
        color: buttonColor,
        fontStyle: FontStyle.normal,
        fontFamily: AppStrings.WORK_SANS,
        fontWeight: _medium,
      ),
    );

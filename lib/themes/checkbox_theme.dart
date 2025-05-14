part of 'themes.dart';

CheckboxThemeData checkboxTheme({
  required Color primaryColor,
  required Color borderColor,
}) =>
    CheckboxThemeData(
      // ignore: deprecated_member_use
      fillColor: MaterialStateProperty.all(primaryColor),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(Sizes.RADIUS_10),
        ),
      ),
      side: BorderSide(color: borderColor),
    );

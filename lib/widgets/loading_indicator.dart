import 'package:flutter/material.dart';

import '../constants/constants.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
            width: 50,
            height: 50,
            child: Stack(alignment: Alignment.center, children: [
              Image.asset(AppAssets.APP_LOGO_SMALL,
                  fit: BoxFit.cover, height: 30, width: 30),
              const CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation<Color>(AppColors.primaryColor),
                  strokeWidth: 0.7)
            ])));
  }
}

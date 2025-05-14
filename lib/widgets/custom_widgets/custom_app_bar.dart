import 'package:command_task_test/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


AppBar customAppBar({
  required BuildContext context,
  required bool automaticallyImplyLeading,
  String title = "",
  bool isMobile = false,
  PreferredSizeWidget? bottom,
  bool showSearchIcon = true,
  bool customLeading = false,
  bool showSearchBar = true,
  bool showFilterIcon = false,
  Widget? inventoryIcon,
  Widget? widget,
  void Function()? onTap,
  void Function()? backOnTap,
  void Function()? onDrawerTap,
  void Function()? onSearchTap,
  void Function()? onFilterTap,
}) {
  return AppBar(
          elevation: Sizes.ELEVATION_0,
          backgroundColor: const Color(0xfff9f9f9),
          automaticallyImplyLeading: true,
          leading: customLeading
              ? widget
              : Padding(
                  padding: EdgeInsets.only(left: Get.width * 0.02),
                  child: IconButton(
                    onPressed: backOnTap ??
                        () {
                          Get.back();
                        },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: context.iconColor,
                    ),
                  ),
                ),
          title: Row(
            children: [
              const SizedBox(
                width: Sizes.WIDTH_50,
              ),
              Text(
                title,
                style: context.textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: Sizes.TEXT_SIZE_22,
                  ),
              ),
            ],
          ),

        );
}

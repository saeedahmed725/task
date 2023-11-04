import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

ThemeData appTheme = ThemeData().copyWith(
  scaffoldBackgroundColor: AppColor.kScaffoldBackgroundColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: const ButtonStyle().copyWith(
        backgroundColor:
            const MaterialStatePropertyAll(AppColor.kPrimaryColor)),
  ),
  appBarTheme: const AppBarTheme(
      elevation: 20,
      shadowColor: Colors.black26,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white),
);

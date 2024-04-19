import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_helper.dart';
import 'size_helper.dart';

class AppTheme {
  AppTheme._();
  static ThemeData theme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: ColorHelper.whiteColor,
    brightness: Brightness.light,
    primaryColor: ColorHelper.primary,
    textTheme: textTheme,
    primaryTextTheme: textTheme.apply(
      bodyColor: ColorHelper.black,
      displayColor: ColorHelper.black,
      decorationColor: ColorHelper.black,
    ),
    appBarTheme: AppBarTheme(
      scrolledUnderElevation: 0,
      toolbarHeight: SizeHelper.setSp(70),
      color: Colors.white,
      actionsIconTheme: const IconThemeData(color: Colors.black),
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle: GoogleFonts.poppins().copyWith(
        color: ColorHelper.black,
        fontWeight: FontWeight.bold,
        fontSize: SizeHelper.setSp(17),
      ),
      shadowColor: ColorHelper.lightGrey.withOpacity(0.2),
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
      size: SizeHelper.setSp(15),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorHelper.primary; // Disabled color
          }
          return ColorHelper.primary; // Regular color
        }),
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorHelper.grey; // Disabled color
          }
          return ColorHelper.lightBlue; // Regular color
        }),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            SizeHelper.padding(vertical: 12, horizontal: 50)),
        elevation: MaterialStateProperty.all<double>(0),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeHelper.setSp(10)),
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorHelper.lightGrey; // Disabled color
          }
          return ColorHelper.primary; // Regular color
        }),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: ColorHelper.grey.withOpacity(0.5),
    ),
  );

  static TextTheme textTheme = TextTheme(
    displayLarge: GoogleFonts.poppins().copyWith(
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: GoogleFonts.poppins().copyWith(
      fontSize: 18.sp,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: GoogleFonts.poppins().copyWith(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: GoogleFonts.poppins().copyWith(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: GoogleFonts.poppins().copyWith(
      fontSize: 14.sp,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: GoogleFonts.poppins().copyWith(
      fontSize: 12.sp,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: GoogleFonts.poppins().copyWith(
      fontSize: 10.sp,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: GoogleFonts.poppins().copyWith(fontSize:  14.sp),
    bodyMedium: GoogleFonts.poppins().copyWith(fontSize: 12.sp),
    titleMedium: GoogleFonts.poppins(fontSize: 20.sp),
    titleSmall: GoogleFonts.poppins(fontSize: 18.sp),
    bodySmall: GoogleFonts.poppins(fontSize: 9.sp),
    labelLarge:
        GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.bold),
    labelMedium: GoogleFonts.poppins(fontSize: 12.sp),
    labelSmall: GoogleFonts.poppins(
      fontSize: 10.sp,
      letterSpacing: 0.0,
    ),
  ).apply(
    bodyColor: Colors.black,
    displayColor: Colors.black,
    decorationColor: Colors.black,
  );

  static List<BoxShadow> defaultBoxShadow = [
    BoxShadow(
      color: Colors.grey.withOpacity(0.2),
      spreadRadius: 5,
      blurRadius: 5,
      offset: const Offset(0, 1), // changes position of shadow
    ),
  ];
}

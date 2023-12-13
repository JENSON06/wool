import 'dart:ui';
import 'package:jenson_k_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillOnPrimaryContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlack => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        side: BorderSide(
          color: appTheme.black900,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get outlineBlackTL151 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        side: BorderSide(
          color: appTheme.black900,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
      );
  static ButtonStyle get outlineBlackTL152 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        side: BorderSide(
          color: appTheme.black900,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
      );
  static ButtonStyle get outlineBlackTL153 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        side: BorderSide(
          color: appTheme.black900,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
      );
  static ButtonStyle get outlineBlackTL154 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        side: BorderSide(
          color: appTheme.black900,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
      );
  static ButtonStyle get outlineBlackTL18 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        side: BorderSide(
          color: appTheme.black900,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.h),
        ),
      );
  static ButtonStyle get outlineBlackTL181 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        side: BorderSide(
          color: appTheme.black900,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}

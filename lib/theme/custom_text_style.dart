import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBarlowBlack900 =>
      theme.textTheme.bodyLarge!.barlow.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBlack900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.75),
      );
  static get bodyLargeGray50001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyLargeInterBlack900 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get bodyLargeInterGray500 => theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray500,
        fontSize: 18.fSize,
      );
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumArefRuqaa => theme.textTheme.bodyMedium!.arefRuqaa;
  static get bodyMediumArefRuqaa14 =>
      theme.textTheme.bodyMedium!.arefRuqaa.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumArefRuqaa14_1 =>
      theme.textTheme.bodyMedium!.arefRuqaa.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumJosefinSans =>
      theme.textTheme.bodyMedium!.josefinSans.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallArefRuqaa =>
      theme.textTheme.bodySmall!.arefRuqaa.copyWith(
        fontSize: 8.fSize,
      );
  static get bodySmallArefRuqaa12 =>
      theme.textTheme.bodySmall!.arefRuqaa.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallArefRuqaa12_1 =>
      theme.textTheme.bodySmall!.arefRuqaa.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallArefRuqaa_1 => theme.textTheme.bodySmall!.arefRuqaa;
  // Display text style
  static get displayMedium40 => theme.textTheme.displayMedium!.copyWith(
        fontSize: 40.fSize,
      );
  static get displayMedium50 => theme.textTheme.displayMedium!.copyWith(
        fontSize: 50.fSize,
      );
  static get displaySmallBold => theme.textTheme.displaySmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get displaySmallInriaSerif => theme.textTheme.displaySmall!.inriaSerif;
  static get displaySmallInter => theme.textTheme.displaySmall!.inter;
  static get displaySmallInterPrimary =>
      theme.textTheme.displaySmall!.inter.copyWith(
        color: theme.colorScheme.primary,
      );
  // Headline style
  static get headlineLargeArefRuqaa => theme.textTheme.headlineLarge!.arefRuqaa;
  static get headlineLargeArefRuqaa32 =>
      theme.textTheme.headlineLarge!.arefRuqaa.copyWith(
        fontSize: 32.fSize,
      );
  static get headlineMediumBlack900 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 28.fSize,
      );
  static get headlineSmallArefRuqaa =>
      theme.textTheme.headlineSmall!.arefRuqaa.copyWith(
        fontSize: 25.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallArefRuqaaBold =>
      theme.textTheme.headlineSmall!.arefRuqaa.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
  static get headlineSmallGray500 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallRegular => theme.textTheme.headlineSmall!.copyWith(
        fontSize: 25.fSize,
        fontWeight: FontWeight.w400,
      );
  // Inter text style
  static get interBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  // Label text style
  static get labelLarge13 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeArefRuqaa =>
      theme.textTheme.titleLarge!.arefRuqaa.copyWith(
        fontSize: 23.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeArefRuqaaLightblueA200 =>
      theme.textTheme.titleLarge!.arefRuqaa.copyWith(
        color: appTheme.lightBlueA200,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeArefRuqaaRegular =>
      theme.textTheme.titleLarge!.arefRuqaa.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeArefRuqaaTeal400 =>
      theme.textTheme.titleLarge!.arefRuqaa.copyWith(
        color: appTheme.teal400,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBalsamiqSans =>
      theme.textTheme.titleLarge!.balsamiqSans.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBluegray400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeOnPrimaryRegular => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRegular_1 => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumGreen900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green900,
      );
  static get titleSmall14 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
      );
}

extension on TextStyle {
  TextStyle get barlow {
    return copyWith(
      fontFamily: 'Barlow',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get inriaSerif {
    return copyWith(
      fontFamily: 'Inria Serif',
    );
  }

  TextStyle get josefinSans {
    return copyWith(
      fontFamily: 'Josefin Sans',
    );
  }

  TextStyle get balsamiqSans {
    return copyWith(
      fontFamily: 'Balsamiq Sans',
    );
  }

  TextStyle get arefRuqaa {
    return copyWith(
      fontFamily: 'Aref Ruqaa',
    );
  }
}

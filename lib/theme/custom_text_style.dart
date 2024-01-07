import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
      );
  // Headline text style
  static get headlineLargeMedium => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get headlineLargeOnPrimaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeTeal900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.teal900,
        fontWeight: FontWeight.w500,
      );
  static get headlineLargeTeal900Bold =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.teal900,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeRed500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red500,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumGray60001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray60001,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  // Poppins text style
  static get poppinsBluegray400 => TextStyle(
        color: appTheme.blueGray400,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;
  static get poppinsGray500 => TextStyle(
        color: appTheme.gray500,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  static get poppinsGray60001 => TextStyle(
        color: appTheme.gray60001,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w700,
      ).poppins;
  // Title text style
  static get titleMediumCyan10001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.cyan10001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumCyan30001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.cyan30001,
        fontSize: 16.fSize,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 16.fSize,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 16.fSize,
      );
  static get titleMediumTeal400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.teal400,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumTeal400Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.teal400,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmall15 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

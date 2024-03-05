import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.bold,
      );

  static get bodyMediumPoppinsBlack900 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodyMediumPoppinsBlack900_1 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 24.fSize,
      );
  static get bodyMediumPoppinsDeeppurple600 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.deepPurple600,
      );
  static get bodyMediumPoppinsDeeppurple60001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.deepPurple60001,
      );
  static get bodyMediumPoppinsDeeppurple900 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.deepBlue1,
      );
  static get bodyMediumPoppinsDeeppurple900_1 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.deepBlue1.withOpacity(0.55),
      );
  static get bodyMediumPoppinsGray5001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray5001,
        fontSize: 13.fSize,
      );
  static get bodyMediumPoppinsGray600 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray600,
        fontSize: 15.fSize,
      );
  static get bodyMediumPoppinsIndigo200 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.indigo200,
      );
  static get bodyMediumPoppinsOnSecondaryContainer =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodyMediumPoppinsSecondaryContainer =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumPoppins_1 => theme.textTheme.bodyMedium!.poppins;
  static get bodyMediumPoppinsff02539d =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: Color(0XFF02539D),
        fontSize: 15.fSize,
      );
  static get bodySmall3d6e6e6e => theme.textTheme.bodySmall!.copyWith(
        color: Color(0X3D6E6E6E),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallDeeppurple900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.deepBlue1,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallGray40002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40002,
        fontSize: 11.fSize,
      );
  static get bodySmallGray40005 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40005,
        fontSize: 11.fSize,
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 11.fSize,
      );
  static get bodySmallGray60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppinsBlack900 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppinsBlack90011 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
      );
  static get bodySmallPoppinsBluegray90001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppinsBluegray90001Regular =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppinsDeeppurple600 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.deepPurple600.withOpacity(0.7),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppinsDeeppurple900 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.deepBlue1,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsDeeppurple900Regular =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.deepBlue1,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppinsErrorContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppinsGray40004 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray40004,
        fontSize: 11.fSize,
      );
  static get bodySmallPoppinsGray50 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray50,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppinsGray50003 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray50003,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsGray60001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray60001,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsGray60001Regular =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray60001,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppinsGray60002 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray60002,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppinsIndigo300 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.indigo300,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppinsIndigo30001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.indigo30001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppinsIndigo600 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.indigo600,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsLightblue900 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.lightBlue900,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppinsOnSecondaryContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppinsOnSecondaryContainer12 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsWhiteA70001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 30.fSize,
        fontWeight: FontWeight.bold,
      );
  static get bodySmallPoppinsWhiteA7000111 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.whiteA70001.withOpacity(0.67),
        fontSize: 11.fSize,
      );
  static get bodySmallPoppinsWhiteA70001Regular =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppinsff0f57e3 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: Color(0XFF0F57E3),
        fontSize: 12.fSize,
      );
  static get textStyleNormal14 => theme.textTheme.bodySmall!.poppins.copyWith(
        color: Color(0XFF230B34),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get textStyleBold15 => theme.textTheme.bodySmall!.poppins.copyWith(
        color: Color(0XFF230B34),
        fontSize: 15.fSize,
        fontWeight: FontWeight.bold,
      );
  static get bodySmallPoppinsff424aa4 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: Color(0XFF424AA4),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppinsff6e6e6e =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: Color(0XFF6E6E6E),
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsff6e6e6eRegular =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: Color(0XFF6E6E6E),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppinsff78a0ef =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: Color(0XFF78A0EF),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppinsff9c9a9a =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: Color(0XFF9C9A9A),
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsffaeacac =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: Color(0XFFAEACAC),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallff6e6e6e => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF6E6E6E),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  // Display text style
  static get displayMedium50 => theme.textTheme.displayMedium!.copyWith(
        fontSize: 50.fSize,
      );
  static get displaySmallGray60001 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.gray60001,
      );
}

extension on TextStyle {
  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

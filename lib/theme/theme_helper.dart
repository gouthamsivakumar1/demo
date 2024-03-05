import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA70001,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.blueGray100,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.deepPurple600.withOpacity(0.31),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray60001,
          fontSize: 14.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.black900.withOpacity(0.55),
          fontSize: 8.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w300,
        ),
        displayMedium: TextStyle(
          color: appTheme.gray700,
          fontSize: 45.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        displaySmall: TextStyle(
          color: appTheme.deepBlue1,
          fontSize: 36.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w300,
        ),
        headlineLarge: TextStyle(
          color: appTheme.gray700,
          fontSize: 30.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 24.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.lightGreenA70001,
          fontSize: 13.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 10.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 8.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 20.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.lightBlue900,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF00B2FF),
    primaryContainer: Color(0XFF5100FF),
    secondaryContainer: Color(0XFF4C90CE),

    // Error colors
    errorContainer: Color(0XFF616061),
    onError: Color(0XFF989898),
    onErrorContainer: Color(0XFF0C1411),

    // On colors(text colors)
    onPrimary: Color(0XFF181819),
    onPrimaryContainer: Color(0XFFCBCBE2),
    onSecondaryContainer: Color(0XFF230B34),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber700 => Color(0XFFE3A00D);

  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue100 => Color(0XFFC5DCFF);
  Color get blue10001 => Color(0XFFCCDAFE);
  Color get blue10002 => Color(0XFFC3D8FF);
  Color get blue10003 => Color(0XFFAFC6FF);
  Color get blue10004 => Color(0XFFBDE6FF);
  Color get blue200 => Color(0XFF84C4FF);
  Color get blue20001 => Color(0XFFA5C8FC);
  Color get blue20002 => Color(0XFF9DC4FF);
  Color get blue20003 => Color(0XFFAAC7FF);
  Color get blue300 => Color(0XFF74AADB);
  Color get blue400 => Color(0XFF3FADEC);
  Color get blue50 => Color(0XFFDFEAFF);
  Color get blue500 => Color(0XFF288BFD);
  Color get blue800 => Color(0XFF1B75BB);
  Color get blueA100 => Color(0XFF77ACFB);
  Color get blueA10001 => Color(0XFF78A1EF);
  Color get blueA200 => Color(0XFF5B93FF);
  Color get blueA400 => Color(0XFF3280FC);
  Color get blueA40001 => Color(0XFF2B70FA);
  Color get onSecondaryContainer => Color(0XFF230B34);

  // BlueAf
  Color get blueA2004f => Color(0X4F5483FF);

  // BlueGray
  Color get blueGray100 => Color(0XFFD1D3D4);
  Color get blueGray50 => Color(0XFFF0F1F2);
  Color get blueGray900 => Color(0XFF2C333A);
  Color get blueGray90001 => Color(0XFF263238);
  Color get blueGray90002 => Color(0XFF2E3D37);
  Color get deepBlue1 => Color(0XFF312783);

  // Cyan
  Color get cyan500 => Color(0XFF00BDCB);

  // DeepOrange
  Color get deepOrange900 => Color(0XFFB56710);

  // DeepPurple
  Color get deepPurple300 => Color(0XFF7E6DD4);
  Color get deepPurple600 => Color(0XFF5A4E98);
  Color get deepPurple60001 => Color(0XFF564CAB);
  Color get deepPurple90001 => Color(0XFF171796);
  Color get deppPurple9002 => Color(0xFF7E6DD5);

  // Gray
  Color get gray100 => Color(0XFFF1F6FF);
  Color get gray10033 => Color(0X33F3F3F3);
  Color get gray200 => Color(0XFFEBEBEB);
  Color get gray20001 => Color(0XFFEFEFEF);
  Color get gray20002 => Color(0XFFEEEEEE);
  Color get gray300 => Color(0XFFDFDFDF);
  Color get gray30001 => Color(0XFFE0E0E0);
  Color get gray30002 => Color(0XFFDCDFD9);
  Color get gray400 => Color(0XFFAFAEAE);
  Color get gray40001 => Color(0XFFC6C6C6);
  Color get gray40002 => Color(0XFFC2C2C2);
  Color get gray40003 => Color(0XFFC8C8C8);
  Color get gray40004 => Color(0XFFBDB9B9);
  Color get gray40005 => Color(0XFFB8B9BA);
  Color get gray50 => Color(0XFFEEFDFF);
  Color get gray500 => Color(0XFFA9A7A7);
  Color get gray50001 => Color(0XFF969494);
  Color get gray50002 => Color(0XFFA5A5A5);
  Color get gray50003 => Color(0XFFAEACAC);
  Color get gray5001 => Color(0XFFFAFCFF);
  Color get gray600 => Color(0XFF797777);
  Color get gray60001 => Color(0XFF6E6E6E);
  Color get gray60002 => Color(0XFF6F6D6D);
  Color get gray700 => Color(0XFF5C5C5C);
  Color get gray900 => Color(0XFF172621);
  Color get gray1000 => Color(0XFFAFADAD);

  // Green
  Color get green500 => Color(0XFF3CC742);

  // Indigo
  Color get indigo100 => Color(0XFFBCC7DD);
  Color get indigo200 => Color(0XFF9CAFD3);
  Color get indigo20001 => Color(0XFF98A7E8);
  Color get indigo20002 => Color(0XFF9CAED3);
  Color get indigo300 => Color(0XFF6A89C4);
  Color get indigo30001 => Color(0XFF7F75B6);
  Color get indigo400 => Color(0XFF6F6FAE);
  Color get indigo600 => Color(0XFF424AA4);
  Color get indigoA200 => Color(0XFF4D69FF);
  Color get indigoA20001 => Color(0XFF4C69FF);

  // LightBlue
  Color get lightBlue100 => Color(0XFFB5E3FF);
  Color get lightBlue900 => Color(0XFF02539D);

  // LightGreen
  Color get lightGreenA700 => Color(0XFF4ECE2E);
  Color get lightGreenA70001 => Color(0XFF41C91E);

  // Pink
  Color get pinkA200 => Color(0XFFF93E86);

  // Purple
  Color get purpleA200 => Color(0XFFC42BEB);
  Color get purpleA700 => Color(0XFF911BF3);

  // Red
  Color get red50 => Color(0XFFFDE8F1);
  Color get red500 => Color(0XFFEB4335);
  Color get redA700 => Color(0XFFFF0000);
  Color get redA70001 => Color(0XFFDD0815);

  // White
  Color get whiteA700 => Color(0XFFFDFEFF);
  Color get whiteA70001 => Color(0XFFFFFFFF);

  // Yellow
  Color get yellow600 => Color(0XFFFCD031);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
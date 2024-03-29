import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:social_app/core/utils/pref_utils.dart';
import 'package:social_app/core/utils/size_utils.dart';
import 'package:get/get.dart';

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

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

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
      scaffoldBackgroundColor: appTheme.gray20002,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.h),
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
            color: appTheme.gray30001,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.onPrimaryContainer.withOpacity(1);
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray30001,
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
          color: appTheme.blueGray300,
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.blueGray300,
          fontSize: 14.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 10.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: appTheme.gray900,
          fontSize: 36.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
        headlineLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 32.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 26.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.gray900,
          fontSize: 24.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          color: Color(0XFFFFFFFF),
          fontSize: 12.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.blueGray300,
          fontSize: 10.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 22.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.blueGray300,
          fontSize: 14.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFFEDC33),
    primaryContainer: Color(0XFFEC1313),
    secondaryContainer: Color(0XFFFDE04C),

    // Error colors
    errorContainer: Color(0XFF8B8B8B),
    onError: Color(0XFFD0D0D0),
    onErrorContainer: Color(0XFF0F1728),

    // On colors(text colors)
    onPrimary: Color(0XB2242424),
    onPrimaryContainer: Color(0X99FFFFFF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF0A0A0B);
  Color get black90001 => Color(0XFF000000);

  // Blacke
  Color get black9001e => Color(0X1E060B14);

  // Blue
  Color get blueA400 => Color(0XFF3478F5);

  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray300 => Color(0XFF95A4B7);

  // DeepOrange
  Color get deepOrange500 => Color(0XFFFF5117);
  Color get deepOrange50001 => Color(0XFFFF4B26);
  Color get deepOrangeA200 => Color(0XFFFE7733);

  // DeepPurple
  Color get deepPurple300 => Color(0XFF9270D8);

  // Gray
  Color get gray100 => Color(0XFFF4F3EF);
  Color get gray10001 => Color(0XFFF7F7F7);
  Color get gray200 => Color(0XFFEEEEEE);
  Color get gray20001 => Color(0XFFF0F0F0);
  Color get gray20002 => Color(0XFFEFEFEF);
  Color get gray300 => Color(0XFFE1E1E1);
  Color get gray30001 => Color(0XFFE4E4E4);
  Color get gray400 => Color(0XFFB1B1B1);
  Color get gray40001 => Color(0XFFBFBFBF);
  Color get gray40002 => Color(0XFFBCBCBC);
  Color get gray600 => Color(0XFF817A8A);
  Color get gray700 => Color(0XFF646464);
  Color get gray800 => Color(0XFF3D3D3D);
  Color get gray80001 => Color(0XFF383838);
  Color get gray900 => Color(0XFF171717);
  Color get gray90001 => Color(0XFF1D1D25);

  // GrayEa
  Color get gray50Ea => Color(0XEAF8F8F8);

  // Grayb
  Color get gray8005b => Color(0X5B3C3C43);

  // Grayf
  Color get gray9000f => Color(0X0F101828);

  // Green
  Color get green100 => Color(0XFFC8E9CA);
  Color get green400 => Color(0XFF64C361);
  Color get green500 => Color(0XFF47BD68);

  // LightBlue
  Color get lightBlueA700 => Color(0XFF007AFF);

  // LightGreen
  Color get lightGreen400 => Color(0XFF8BD66B);
  Color get lightGreen40001 => Color(0XFFBDAD5D);

  // Red
  Color get red500 => Color(0XFFEB4335);

  // White
  Color get whiteA700 => Color(0XFFFCFCFE);

  // Yellowe
  Color get yellow6001e => Color(0X1EFFDD33);

  // Yellow
  Color get yellow900 => Color(0XFFEC9513);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

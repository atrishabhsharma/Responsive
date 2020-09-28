import 'package:flutter/material.dart';
import 'package:reponsive/utils/config.dart';

class AppTheme {
  AppTheme._();

  static const Color appBackgroundColor = Colors.white;
  static const Color topBarBackgroundColor = Colors.amber;
  static const Color selectedTabBackgroundColor = Colors.yellow;
  static const Color unselectedtabbackgroundcolor = Colors.white;
  static const Color subTitleTextColor = Colors.grey;

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppTheme.appBackgroundColor,
    brightness: Brightness.light,
    textTheme: lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    textTheme: darkTextTheme,
  );

  static final TextTheme lightTextTheme = TextTheme(
    headline5: _titlelight,
    headline6: _subtitlelight,
    button: _buttonlight,
  );

  static final TextTheme darkTextTheme = TextTheme(
    headline5: _titledark,
    headline6: _subtitledark,
    button: _buttondark,
  );

  static final TextStyle _titlelight = TextStyle(
    color: Colors.black,
    fontSize: 3.5 * SizeConfig.vmultiplier,
  );

  static final TextStyle _subtitlelight = TextStyle(
    color: AppTheme.subTitleTextColor,
    fontSize: 2 * SizeConfig.vmultiplier,
    height: 1.5,
  );

  static final TextStyle _buttonlight = TextStyle(
    color: Colors.black,
    fontSize: 2.5 * SizeConfig.vmultiplier,
  );

  static final TextStyle _titledark = _titlelight.copyWith(color: Colors.white);
  static final TextStyle _subtitledark =
      _subtitledark.copyWith(color: Colors.white70);
  static final TextStyle _buttondark =
      _buttonlight.copyWith(color: Colors.black);
}

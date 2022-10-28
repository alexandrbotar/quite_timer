import 'package:flutter/material.dart';

abstract class ConstColorTheme {
  static const mainColorDark = Color.fromRGBO(58, 58, 58, 1);
  static const mainColorLight = Color.fromRGBO(212, 212, 212, 1);
  static const backGrounColor = Color.fromRGBO(255, 255, 255, 1);
  static const hintTextColor = Color.fromRGBO(58, 58, 58, 0.2);
}

abstract class ConstTextTheme {
  static const labelTextTheme = TextStyle(
      color: ConstColorTheme.mainColorDark,
      fontFamily: 'Montserrat',
      fontSize: 36);
  static const darkTextTheme = TextStyle(
      color: ConstColorTheme.mainColorDark,
      fontFamily: 'Montserrats',
      fontWeight: FontWeight.w400,
      fontSize: 18);
  static const lightTextTheme = TextStyle(
      color: ConstColorTheme.mainColorLight,
      fontFamily: 'Montserrats',
      fontWeight: FontWeight.w400,
      fontSize: 18);
  static const hintTextTheme = TextStyle(
    color: ConstColorTheme.hintTextColor,
    fontSize: 18,
    fontFamily: 'Montserrats',
    fontWeight: FontWeight.w400,
  );
}

abstract class ConstButtonTheme {
  static final darkButtonTheme = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(ConstColorTheme.mainColorDark),
    shadowColor: MaterialStateProperty.all(Colors.transparent),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  );

  static final lightButtonTheme = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(ConstColorTheme.mainColorLight),
    shadowColor: MaterialStateProperty.all(Colors.transparent),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  );
}

abstract class ConstTextFieldTheme {
  static final textFieldEmailTheme = InputDecoration(
    filled: true,
    fillColor: ConstColorTheme.mainColorLight,
    hintText: 'Enter email',
    hintStyle: ConstTextTheme.hintTextTheme,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(20),
    ),
  );

  static final textFieldPasswordTheme = InputDecoration(
    filled: true,
    fillColor: ConstColorTheme.mainColorLight,
    hintText: 'Enter Password',
    hintStyle: ConstTextTheme.hintTextTheme,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(20),
    ),
  );

  static final textFieldPasswordConfirmTheme = InputDecoration(
    filled: true,
    fillColor: ConstColorTheme.mainColorLight,
    hintText: 'Enter Password',
    hintStyle: ConstTextTheme.hintTextTheme,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(20),
    ),
  );
}

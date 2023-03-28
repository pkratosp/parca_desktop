import 'package:flutter/material.dart';

final tema = ThemeData(
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff0f3063),
        foregroundColor: Color(0xff8fd400),
        centerTitle: true
    ),
    textTheme: const TextTheme(
        bodyText2: TextStyle(
            color: Color(0xff8fd400),
        )
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary:  Colors.transparent)
);
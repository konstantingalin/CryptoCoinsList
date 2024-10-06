import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(96, 44, 44, 44),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black12,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 20,
    ),
    labelSmall: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 14,
    ),
  ),
  useMaterial3: true,
);

import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.blue.shade50, // Very light blue for surfaces
    primary: Colors.lightBlue.shade400, // Lighter blue for primary
    secondary: Colors.cyan.shade300, // Soft cyan for secondary
    tertiary: Colors.white, // White for tertiary elements
    inversePrimary:
        Colors.lightBlue.shade900, // Dark blue for inverse primary text
  ),
);

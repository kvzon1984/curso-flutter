import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.black,
  Colors.white,
  Colors.blueGrey,
  Colors.blue,
  Colors.amber,
  Colors.red,
  Colors.brown,
  Colors.teal,
  Colors.green,
  
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }): assert(selectedColor >= 0, 'Selected color must be greater then 0'),
      assert(selectedColor < colorList.length,
        'Selected color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[ selectedColor ],
    appBarTheme: const AppBarTheme(
      centerTitle: true,
    ),
  );
}
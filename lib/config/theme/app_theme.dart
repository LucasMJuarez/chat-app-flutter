import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF6200EE);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.red,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
  Colors.pink,
];

class AppTheme {
  final int selectColor;

  AppTheme({this.selectColor = 0})
    : assert(
        selectColor >= 0,
        'Colors must be between 0 and ${_colorThemes.length - 1}',
      ),
      assert(
        selectColor <= _colorThemes.length,
        'Colors must be between 0 and ${_colorThemes.length - 1}',
      );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectColor],
    );
  }
}

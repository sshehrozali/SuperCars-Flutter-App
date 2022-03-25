import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final Color _color; // Don't touch it plz :)
  TextSection(this._color); // Constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(''),
      decoration: BoxDecoration(color: _color),
    );
  }
}

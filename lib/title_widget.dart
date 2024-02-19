import 'package:flutter/material.dart';

class TitleCategory extends StatelessWidget {
  TitleCategory({required this.text});

  String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color(0xFF993CCD),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 22),
        child: Text(
          textAlign: TextAlign.center,
          text,
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}

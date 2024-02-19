import 'package:flutter/material.dart';

import 'category.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({required this.categories});
  Categoryy categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Image.asset(
            categories.imagePath,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Container(
              color: Color(0x99993CCD),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin: EdgeInsets.all(10),
              child: Text(
                categories.title,
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        ],
      ),
    );
  }
}

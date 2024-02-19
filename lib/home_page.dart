import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice_on_scrolling_app/categories_widget.dart';
import 'package:practice_on_scrolling_app/title_widget.dart';

import 'category.dart';

class HomePage extends StatelessWidget {
  List<Categoryy> categoriesData = [
    Categoryy(title: 'Cars', imagePath: 'assets/images/السيارات.jpg'),
    Categoryy(title: 'ٍSports', imagePath: 'assets/images/الرياضة.jpg'),
    Categoryy(title: 'Technology', imagePath: 'assets/images/التكنولوجيا.jpg'),
    Categoryy(title: 'Politics', imagePath: 'assets/images/السياسة.jpg'),
    Categoryy(title: 'Tourist', imagePath: 'assets/images/السياحة.jpg'),
    Categoryy(title: 'Health', imagePath: 'assets/images/الصحة.png'),
    Categoryy(title: 'Knowledge', imagePath: 'assets/images/المعرفة.jpg'),
    Categoryy(title: 'Economy', imagePath: 'assets/images/الاقتصاد.jpg'),
  ];
  HomePage() {
    for (int i = 0; i < 10000; i++) {
      categoriesData.add(
          Categoryy(title: 'Cars', imagePath: 'assets/images/السيارات.jpg'));
      categoriesData.add(
          Categoryy(title: 'ٍSports', imagePath: 'assets/images/الرياضة.jpg'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Row(
            children: [
              TitleCategory(text: 'News'),
            ],
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 5,
              ),
              itemBuilder: (context, index) {
                return CategoryWidget(categories: categoriesData[index]);
              },
              itemCount: categoriesData.length,
            ),
          ),
        ],
      ),
    );
  }

  CategoryWidget convertFromCategoryToCategoryWidget(Categoryy category) {
    return CategoryWidget(
      categories: category,
    );
  }
}

import 'package:drink_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:drink_app/data/category_data.dart';
import 'package:drink_app/models/category.dart';
import 'category_card.dart';

class MenuCategory extends StatelessWidget {
  final double defaultSize = SizeConfig.defaultSize;
  final List<Category> _categories = categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: defaultSize * 7,
      child: ListView.builder(
        //kalau vertical pakai shrinkwrap
        // shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index) {
          bool last = _categories.length == (index + 1);
          return Container(
            padding: last ? EdgeInsets.only(right: defaultSize * 1.5) : null,
            child: CategoryCard(
              imagePath: _categories[index].imagePath,
              categoryName: _categories[index].categoryName,
              numItems: _categories[index].numItems,
            ),
          );
        },
      ),
    );
  }
}

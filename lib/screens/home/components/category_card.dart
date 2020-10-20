import 'package:drink_app/constants.dart';
import 'package:drink_app/screens/home/components/menu_category.dart';
import 'package:drink_app/screens/home/components/menu_drink.dart';
import 'package:drink_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatefulWidget {
  final String categoryName;
  final String imagePath;
  final int numItems;

  CategoryCard({
    this.categoryName,
    this.imagePath,
    this.numItems,
  });

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  String category = "Choco";
  double defaultSize = SizeConfig.defaultSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        category = widget.categoryName;
        print(category);
        setState(
          () {
            MenuCategory(category: category);
          },
        );
      },
      child: Container(
        padding: EdgeInsets.only(left: defaultSize * 1.5),
        child: Card(
          color: secondaryColor,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: defaultSize * 2, vertical: defaultSize * 1),
            child: Row(
              children: [
                SvgPicture.asset(
                  widget.imagePath,
                  height: defaultSize * 5,
                  width: defaultSize * 5,
                ),
                SizedBox(width: defaultSize * 2),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(category),
                    Text(
                      widget.categoryName,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: defaultSize * 1.5,
                      ),
                    ),
                    Text("${widget.numItems} flavors"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

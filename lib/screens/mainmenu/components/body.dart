import 'package:drink_app/constants.dart';
import 'package:drink_app/screens/mainmenu/components/menu_category.dart';
import 'package:drink_app/screens/mainmenu/components/menu_drink.dart';
import 'package:drink_app/screens/mainmenu/components/search_field.dart';
import 'package:drink_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double defaultSize = SizeConfig.defaultSize;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height * 1,
        // padding: EdgeInsets.only(left: defaultSize * 2, right: defaultSize * 2),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: defaultSize * 2,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: defaultSize * 2, right: defaultSize * 2),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Lets have some drinks",
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: defaultSize * 1.8,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(
                  height: defaultSize * 1,
                ),
                MenuCategory(),
                SizedBox(
                  height: defaultSize * 5,
                ),
                SearchField(),
                SizedBox(
                  height: defaultSize * 5,
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: defaultSize * 2, right: defaultSize * 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Our Menu",
                        style: TextStyle(
                            color: tertiaryColor,
                            fontSize: defaultSize * 1.6,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: primaryColor,
                          fontSize: defaultSize * 1.8,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: defaultSize * 3,
                ),
                MenuDrink(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

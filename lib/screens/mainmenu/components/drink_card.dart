import 'package:drink_app/constants.dart';
import 'package:drink_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrinkCard extends StatefulWidget {
  final String drinkImage;
  final String drinkName;
  final String price;

  DrinkCard({this.drinkImage, this.drinkName, this.price});
  @override
  _DrinkCardState createState() => _DrinkCardState();
}

class _DrinkCardState extends State<DrinkCard> {
  double defaultSize = SizeConfig.defaultSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      margin: EdgeInsets.only(left: defaultSize * 3),
      height: defaultSize * 38,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            margin: EdgeInsets.only(top: defaultSize * 20),
            height: defaultSize * 16,
            width: defaultSize * 25,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: primaryColor,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
              borderRadius: BorderRadius.circular(5),
              color: tertiaryColor,
              // image: DecorationImage(
              //   image: AssetImage("assets/images/star.png"),
              // ),
            ),
          ),
          Container(
            // margin: EdgeInsets.only(top: defaultSize * 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  widget.drinkImage,
                  height: defaultSize * 25,
                  width: defaultSize * 30,
                ),
                SizedBox(
                  height: defaultSize * 1.5,
                ),
                Container(
                  height: defaultSize * 1,
                  width: defaultSize * 12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.elliptical(360, 180)),
                    boxShadow: [
                      BoxShadow(
                        color: primaryColor,
                        offset: Offset(0.0, 0.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: defaultSize * 1.5,
                ),
                Text(
                  widget.drinkName,
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: defaultSize * 2,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  widget.price,
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: defaultSize * 2,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

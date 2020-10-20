import 'package:drink_app/constants.dart';
import 'package:drink_app/size_config.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final double defaultSize = SizeConfig.defaultSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultSize * 4, right: defaultSize * 4),
      child: Material(
        elevation: 5,
        // margin: EdgeInsets.only(left: defaultSize * 4, right: defaultSize * 4),
        // decoration: BoxDecoration(
        //   // borderRadius: BorderRadius.circular(5),
        //   boxShadow: [
        //     BoxShadow(
        //       color: primaryColor,
        //       offset: Offset(0.0, 0.0), //(x,y)
        //       blurRadius: 1.0,
        //     ),
        //   ],
        // ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "Find your drink here",
            filled: true,
            suffixIcon: Icon(Icons.search),
            fillColor: scaffoldBackgroundColor,
            border: InputBorder.none,
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(10),
            // ),
          ),
        ),
      ),
    );
  }
}

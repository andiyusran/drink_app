import 'package:drink_app/data/drink_data.dart';
import 'package:drink_app/models/drink.dart';
import 'package:drink_app/screens/mainmenu/components/drink_card.dart';
import 'package:drink_app/size_config.dart';
import 'package:flutter/material.dart';

class MenuDrink extends StatelessWidget {
  final double defaultSize = SizeConfig.defaultSize;
  final List<Drink> _drinks = drinks;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: defaultSize * 38,
      child: ListView.builder(
        //kalau vertical pakai shrinkwrap
        // shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: _drinks.length,
        itemBuilder: (BuildContext context, int index) {
          // bool first = _drinks.length == (index + 2);
          bool last = _drinks.length == (index + 1);
          return Container(
            padding: last ? EdgeInsets.only(right: defaultSize * 3) : null,
            child: DrinkCard(
              drinkImage: _drinks[index].drinkImage,
              drinkName: _drinks[index].drinkName,
              price: _drinks[index].price,
            ),
          );
        },
      ),
    );
  }
}

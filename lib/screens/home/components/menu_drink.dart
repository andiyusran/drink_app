import 'package:drink_app/api/api_service.dart';
import 'package:drink_app/constants.dart';
import 'package:drink_app/models/models.dart';
import 'package:drink_app/screens/home/components/drink_card.dart';
import 'package:drink_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MenuDrink extends StatefulWidget {
  @override
  _MenuDrinkState createState() => _MenuDrinkState();
}

class _MenuDrinkState extends State<MenuDrink> {
  final double defaultSize = SizeConfig.defaultSize;
  ApiService apiService;

  @override
  void initState() {
    super.initState();
    apiService = ApiService();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder(
        future: apiService.getDrink(),
        builder: (BuildContext context, AsyncSnapshot<List<Drink>> snapshot) {
          if (snapshot.hasError) {
            print("Terjadi kesalahan: ${snapshot.error}");
            return Center(
              child: Text("Terjadi kesalahan: ${snapshot.error.toString()}"),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            List<Drink> listMinuman = snapshot.data;
            return _buildListView(listMinuman);
          } else {
            return SafeArea(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Center(
                  child:
                      SpinKitWave(color: primaryColor, size: defaultSize * 3),
                ),
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildListView(List<Drink> listMinuman) {
    return Container(
      height: defaultSize * 38,
      child: ListView.builder(
        //kalau vertical pakai shrinkwrap
        // shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: listMinuman.length,
        itemBuilder: (BuildContext context, int index) {
          // bool first = _drinks.length == (index + 2);
          bool last = listMinuman.length == (index + 1);
          return Container(
            padding: last ? EdgeInsets.only(right: defaultSize * 3) : null,
            child: DrinkCard(
              drinkImage: listMinuman[index].drinkImage ?? "",
              drinkName: listMinuman[index].drinkName ?? "",
              drinkPrice: listMinuman[index].drinkPrice ?? "",
            ),
          );
        },
      ),
    );
  }
}

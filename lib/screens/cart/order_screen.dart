import 'package:drink_app/constants.dart';
import 'package:drink_app/screens/cart/components/body.dart';
import 'package:drink_app/size_config.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      // automaticallyImplyLeading: false,
      backgroundColor: tertiaryColor,
      centerTitle: true,
      title: Title(color: Colors.white, child: Text("Cart")),
      // actions: <Widget>[
      //   IconButton(
      //     icon: const Icon(Icons.settings),
      //     onPressed: () {
      //       Navigator.of(context).push(
      //         MaterialPageRoute(builder: (context) => Setting()),
      //       );
      //       // masuk halaman baru
      //     },
      //   ),
      // ],
    );
  }
}

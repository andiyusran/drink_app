import 'package:drink_app/constants.dart';
import 'package:drink_app/screens/mainmenu/components/body.dart';
import 'package:drink_app/size_config.dart';
import 'package:flutter/material.dart';

class MainMenuCustomer extends StatefulWidget {
  @override
  _MainMenuCustomerState createState() => _MainMenuCustomerState();
}

class _MainMenuCustomerState extends State<MainMenuCustomer> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // appBar: AppBar(
      //   brightness: Brightness.dark,
      // ),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: primaryColor,
      centerTitle: true,
      title: Title(color: Colors.white, child: Text("Profil")),
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

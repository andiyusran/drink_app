import 'package:drink_app/constants.dart';
import 'package:drink_app/screens/home/components/body.dart';
import 'package:drink_app/size_config.dart';
import 'package:flutter/material.dart';

class MainMenuCustomer extends StatefulWidget {
  @override
  _MainMenuCustomerState createState() => _MainMenuCustomerState();
}

class _MainMenuCustomerState extends State<MainMenuCustomer>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        // appBar: AppBar(
        //   brightness: Brightness.dark,
        // ),
        body: Body(),
        extendBody: true,
        bottomNavigationBar: Container(
          color: primaryColor,
          child: TabBar(
            labelColor: secondaryColor,
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: primaryColor)),
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home_outlined),
              ),
              Tab(
                icon: Icon(Icons.home_outlined),
              ),
              Tab(
                icon: Icon(Icons.home_outlined),
              ),
              Tab(
                icon: Icon(Icons.home_outlined),
              ),
            ],
            controller: _tabController,
          ),
        ));
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

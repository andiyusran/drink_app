import 'package:drink_app/screens/cart/components/order_card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              OrderCard(),
            ],
          ),
        ),
      ),
    ); 
  }
}

import 'package:drink_app/size_config.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final double defaultSize = SizeConfig.defaultSize;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            height: defaultSize * 7,
            width: defaultSize * 0.1,
            child: Column(
              children: [
                Icon(Icons.keyboard_arrow_up),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),
          )
        ],
      ),
    );
  }
}

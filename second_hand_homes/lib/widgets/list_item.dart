import 'package:flutter/material.dart';
import 'package:second_hand_homes/models/house.dart';

class ListItem extends StatelessWidget {
  final House house;
  const ListItem(this.house);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(house.area),
    );
  }
}

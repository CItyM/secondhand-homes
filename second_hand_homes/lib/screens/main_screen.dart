import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:second_hand_homes/providers/house_provider.dart';
import 'package:second_hand_homes/widgets/list_item.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<HouseProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: provider.loadHouses(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemBuilder: (_, index) => ListItem(provider.houses[index]),
              itemCount: provider.houses.length,
            );
          } else if (snapshot.hasError) {
            return Container();
          }
          return Align(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

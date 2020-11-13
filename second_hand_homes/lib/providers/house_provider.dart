import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:second_hand_homes/models/house.dart';

class HouseProvider with ChangeNotifier {
  List<House> _houses = [];

  List<House> get houses => _houses;

  Future<int> loadHouses() async {
    List<House> temp = [];
    try {
      final String response =
          await rootBundle.loadString('assets/second_hand_homes.json');
      final data = await json.decode(response);
      await data.forEach((m) => temp.add(House.fromJson(m)));
      _houses = [...temp];
      print(_houses.length);
      notifyListeners();
      return 0;
    } catch (e) {
      return 1;
    }
  }
}

import 'package:second_hand_homes/helpers/field_names.dart';

class House {
  String area;
  String title;
  String link;
  String picture;
  String communityLink;
  String communityName;
  String houseInfo;
  String attention;
  String isVrFutureHome;
  String subway;
  String taxFree;
  String price;
  String unitPrice;
  String currentTime;

  House.fromJson(Map<String, dynamic> json)
      : area = json[FieldNames.area],
        title = json[FieldNames.title],
        link = json[FieldNames.link],
        picture = json[FieldNames.picture],
        communityLink = json[FieldNames.communityLink],
        communityName = json[FieldNames.communityName],
        houseInfo = json[FieldNames.houseInfo],
        attention = json[FieldNames.attention],
        isVrFutureHome = json[FieldNames.isVrFutureHome],
        subway = json[FieldNames.subway],
        taxFree = json[FieldNames.taxFree].toString(),
        price = json[FieldNames.price].toString(),
        unitPrice = json[FieldNames.unitPrice].toString(),
        currentTime = json[FieldNames.currentTime];
}

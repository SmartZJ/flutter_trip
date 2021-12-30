// String icon	String	NonNull
// String moreUrl	String	NonNull
// CommonModel bigCard1	Object	NonNull
// CommonModel bigCard2	Object	NonNull
// CommonModel smallCard1	Object	NonNull
// CommonModel smallCard2	Object	NonNull
// CommonModel smallCard3	Object	NonNull
// CommonModel smallCard4	Object	NonNull

import 'package:flutter_trip/model/common_model.dart';

class SalesBoxModel {
  final String icon;
  final String moreUrl;
  final CommonModel bigCard1;
  final CommonModel bigCard2;
  final CommonModel smallCard1;
  final CommonModel smallCard2;
  final CommonModel smallCard3;
  final CommonModel smallCard4;

  SalesBoxModel(
      {required this.icon,
      required this.moreUrl,
      required this.bigCard1,
      required this.bigCard2,
      required this.smallCard1,
      required this.smallCard2,
      required this.smallCard3,
      required this.smallCard4});

  factory SalesBoxModel.fromJson(Map<String, dynamic> json) {
    return SalesBoxModel(
        icon: json['icon'],
        moreUrl: json['moreUrl'],
        bigCard1: CommonModel.fromJson(json['bigCard1']),
        bigCard2: CommonModel.fromJson(json['bigCard2']),
        smallCard1: CommonModel.fromJson(json['smallCard1']),
        smallCard2: CommonModel.fromJson(json['smallCard2']),
        smallCard3: CommonModel.fromJson(json['smallCard3']),
        smallCard4: CommonModel.fromJson(json['smallCard4']));
  }

  Map<String, dynamic> toJson() {
    return {
      'icon': icon,
      'moreUrl': moreUrl,
      'bigCard1': bigCard1.toJson(),
      'bigCard2': bigCard2.toJson(),
      'smallCard1': smallCard1.toJson(),
      'smallCard2': smallCard2.toJson(),
      'smallCard3': smallCard3.toJson(),
      'smallCard4': smallCard4.toJson()
    };
  }
}
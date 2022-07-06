// To parse this JSON data, do
//
//     final animals = animalsFromJson(jsonString);

import 'dart:convert';

List<Animals> animalsFromJson(str) =>
    List<Animals>.from(str.map((x) => Animals.fromJson(x)));

String animalsToJson(List<Animals> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Animals {
  Animals({
    this.breeds,
    this.id,
    this.url,
    this.width,
    this.height,
  });

  List<dynamic>? breeds;
  String? id;
  String? url;
  dynamic width;
  dynamic height;

  factory Animals.fromJson(Map<String, dynamic> json) => Animals(
        breeds: List<dynamic>.from(json["breeds"].map((x) => x)),
        id: json["id"],
        url: json["url"],
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "breeds": List<dynamic>.from(breeds!.map((x) => x)),
        "id": id,
        "url": url,
        "width": width,
        "height": height,
      };
}

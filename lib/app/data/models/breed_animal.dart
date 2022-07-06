// To parse this JSON data, do
//
//     final breedAnimal = breedAnimalFromJson(jsonString);

import 'dart:convert';

List<BreedAnimal> breedAnimalFromJson(String str) => List<BreedAnimal>.from(
    json.decode(str).map((x) => BreedAnimal.fromJson(x)));

String breedAnimalToJson(List<BreedAnimal> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BreedAnimal {
  BreedAnimal({
    this.altNames,
    this.experimental,
    this.hairless,
    this.hypoallergenic,
    this.id,
    this.lifeSpan,
    this.name,
    this.natural,
    this.origin,
    this.rare,
    this.referenceImageId,
    this.rex,
    this.shortLegs,
    this.suppressedTail,
    this.temperament,
    this.weightImperial,
    this.wikipediaUrl,
  });

  String? altNames,
      id,
      lifeSpan,
      name,
      origin,
      temperament,
      weightImperial,
      wikipediaUrl;
  int? experimental,
      hairless,
      hypoallergenic,
      natural,
      rare,
      rex,
      shortLegs,
      suppressedTail;
  dynamic referenceImageId;

  factory BreedAnimal.fromJson(Map<String, dynamic> json) => BreedAnimal(
        altNames: json["alt_names"],
        experimental: json["experimental"],
        hairless: json["hairless"],
        hypoallergenic: json["hypoallergenic"],
        id: json["id"],
        lifeSpan: json["life_span"],
        name: json["name"],
        natural: json["natural"],
        origin: json["origin"],
        rare: json["rare"],
        referenceImageId: json["reference_image_id"],
        rex: json["rex"],
        shortLegs: json["short_legs"],
        suppressedTail: json["suppressed_tail"],
        temperament: json["temperament"],
        weightImperial: json["weight_imperial"],
        wikipediaUrl: json["wikipedia_url"],
      );

  Map<String, dynamic> toJson() => {
        "alt_names": altNames,
        "experimental": experimental,
        "hairless": hairless,
        "hypoallergenic": hypoallergenic,
        "id": id,
        "life_span": lifeSpan,
        "name": name,
        "natural": natural,
        "origin": origin,
        "rare": rare,
        "reference_image_id": referenceImageId,
        "rex": rex,
        "short_legs": shortLegs,
        "suppressed_tail": suppressedTail,
        "temperament": temperament,
        "weight_imperial": weightImperial,
        "wikipedia_url": wikipediaUrl,
      };
}

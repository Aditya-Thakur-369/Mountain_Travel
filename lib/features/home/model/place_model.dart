// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class PlaceModel {
  String name;
  String trip;
  String image_url;
  String belogto;
  Map<String, int> price;
  Map<String, String> timing;

  PlaceModel({
    required this.name,
    required this.trip,
    required this.image_url,
    required this.belogto,
    required this.price,
    required this.timing,
  });

  PlaceModel copyWith({
    String? name,
    String? trip,
    String? image_url,
    String? belogto,
    Map<String, int>? price,
    Map<String, String>? timing,
  }) {
    return PlaceModel(
      name: name ?? this.name,
      trip: trip ?? this.trip,
      image_url: image_url ?? this.image_url,
      belogto: belogto ?? this.belogto,
      price: price ?? this.price,
      timing: timing ?? this.timing,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'trip': trip,
      'image_url': image_url,
      'belogto': belogto,
      'price': price,
      'timing': timing,
    };
  }

  factory PlaceModel.fromMap(Map<String, dynamic> map) {
    return PlaceModel(
      name: map['name'],
      trip: map['trip'],
      image_url: map['image_url'],
      belogto: map['belogto'],
      price: Map<String, int>.from(map['price'] ?? {}),
      timing: Map<String, String>.from(map['timing'] ?? {}),
    );
  }

  String toJson() => json.encode(toMap());

  factory PlaceModel.fromJson(String source) =>
      PlaceModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PlaceModel(name: $name, trip: $trip, image_url: $image_url, belogto: $belogto, price: $price, timing: $timing)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PlaceModel &&
      other.name == name &&
      other.trip == trip &&
      other.image_url == image_url &&
      other.belogto == belogto &&
      mapEquals(other.price, price) &&
      mapEquals(other.timing, timing);
  }

  @override
  int get hashCode {
    return name.hashCode ^
      trip.hashCode ^
      image_url.hashCode ^
      belogto.hashCode ^
      price.hashCode ^
      timing.hashCode;
  }
}

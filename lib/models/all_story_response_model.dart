// To parse this JSON data, do
//
//     final allStoryResponseModel = allStoryResponseModelFromJson(jsonString);

import 'dart:convert';

class AllStoryResponseModel {
  AllStoryResponseModel({
    required this.error,
    required this.message,
    required this.listStory,
  });

  bool error;
  String message;
  List<ListStory> listStory;

  factory AllStoryResponseModel.fromRawJson(String str) =>
      AllStoryResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AllStoryResponseModel.fromJson(Map<String, dynamic> json) =>
      AllStoryResponseModel(
        error: json["error"],
        message: json["message"],
        listStory: List<ListStory>.from(
            json["listStory"].map((x) => ListStory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "message": message,
        "listStory": List<dynamic>.from(listStory.map((x) => x.toJson())),
      };
}

class ListStory {
  ListStory({
     this.id,
     this.name,
     this.description,
     this.photoUrl,
     this.createdAt,
    //  this.lat,
    //  this.lon,
  });

  String? id;
  String? name;
  String? description;
  String? photoUrl;
  DateTime? createdAt;
  // String? lat;
  // String? lon;

  factory ListStory.fromRawJson(String str) =>
      ListStory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ListStory.fromJson(Map<String, dynamic> json) => ListStory(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        photoUrl: json["photoUrl"],
        createdAt: DateTime.parse(json["createdAt"]),
        // lat: json["lat"],
        // lon: json["lon"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "photoUrl": photoUrl,
        "createdAt": createdAt,
        // "lat": lat,
        // "lon": lon,
      };
}

// To parse this JSON data, do
//
//     final allStoryResponseModel = allStoryResponseModelFromJson(jsonString);

import 'dart:convert';

class LoginResponseModel {
  LoginResponseModel({
    required this.error,
    required this.message,
    required this.loginResult,
  });

  bool error;
  String message;
  LoginResult loginResult;

  factory LoginResponseModel.fromRawJson(String str) =>
      LoginResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
        error: json["error"],
        message: json["message"],
        loginResult: LoginResult.fromJson(json["loginResult"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "message": message,
        "loginResult": loginResult.toJson(),
      };
}

class LoginResult {
  LoginResult({
    required this.userId,
    required this.name,
    required this.token,
  });

  String userId;
  String name;
  String token;

  factory LoginResult.fromRawJson(String str) =>
      LoginResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginResult.fromJson(Map<String, dynamic> json) => LoginResult(
        userId: json["userId"],
        name: json["name"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "name": name,
        "token": token,
      };
}

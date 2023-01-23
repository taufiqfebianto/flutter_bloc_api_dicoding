import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../models/models.dart';
import '../shared/shared.dart';

class AppRepo {
  Future<LoginResponseModel> register(
      {required String username, required String password}) async {
    try {
      final Map<String, dynamic> parameters = {
        'username': username,
        'password': password,
      };

      Map<String, dynamic> data = await network.postHttp(
          path: Constants.register,
          content: parameters,
          contentType: 'application/json');
      return LoginResponseModel.fromJson(data);
    } on DioError catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }

  Future<LoginResponseModel> login(
      {required String username, required String password}) async {
    try {
      final Map<String, dynamic> parameters = {
        'username': username,
        'password': password,
      };

      Map<String, dynamic> data = await network.postHttp(
          path: Constants.login,
          content: parameters,
          contentType: 'application/json');
      return LoginResponseModel.fromJson(data);
    } on DioError catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }

  Future<AllStoryResponseModel> allStory() async {
    String id = await storage.getString(
        boxName: describeEnum(StorageConstants.user), key: 'accountId');
    try {
      final Map<String, dynamic> parameters = {
        'id': id,
      };

      Map<String, dynamic> data = await network.getHttp(
          path: Constants.allStory,
          parameter: parameters,
          contentType: 'application/json');
      return AllStoryResponseModel.fromJson(data);
    } on DioError catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }

  Future<DetailStoryResponseModel> detailStory(
      {required String accountDstId, required double amount}) async {
    try {
      final Map<String, dynamic> parameters = {
        'accountDstId': accountDstId,
        'amount': amount,
      };

      Map<String, dynamic> data = await network.postHttp(
          path: Constants.detailStory,
          content: parameters,
          contentType: 'application/json');
      return DetailStoryResponseModel.fromJson(data);
    } on DioError catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }

  Future<dynamic> addStory(
      {required String accountDstId, required double amount}) async {
    try {
      final Map<String, dynamic> parameters = {
        'accountDstId': accountDstId,
        'amount': amount,
      };

      Map<String, dynamic> data = await network.postHttp(
          path: Constants.addStory,
          content: parameters,
          contentType: 'application/json');
      return data;
    } on DioError catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }
}

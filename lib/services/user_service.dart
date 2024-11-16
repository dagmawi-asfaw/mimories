import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:mimories/app/app.logger.dart';
import 'package:mimories/models/user_model.dart';
import 'package:mimories/services/services.dart';

import '../app/app.locator.dart';

class UserService {
  final logger = getLogger('Users Service');

  final ApiService _apiService = locator<ApiService>();

  Future<List<UserModel>> getUsers() async {
    // get data from api service
    List<dynamic> data = await _apiService.get('/users');

    //convert data list to list of user models
    List<UserModel> users = data.map((res) => UserModel.fromJson(res)).toList();

    //return users
    return users;
  }
}

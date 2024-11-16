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

  Future<List<UserModel>> getUsers()async {

  String result = await  _apiService.get('/users');

  List<UserModel> users = [];

  UserModel.fromJson(result as Map<String, Object?>);

 // UserModel user = UserModel.fromJson();
  logger.log(Logger.level,jsonDecode(result));
 // logger.log(Logger.level,user);
    return users;
  }
}
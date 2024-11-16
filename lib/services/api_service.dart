import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../app/app.logger.dart';

class ApiService {
  final logger = getLogger('Api Service');
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    ),
  );

  Future<List<dynamic>> get(String route) async {

    //get users
    Response result = await _dio.get(route);

    //return data
    return result.data;
  }
}
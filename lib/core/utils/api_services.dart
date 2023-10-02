import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/user_data_using_shared_preferences.dart';

import 'constances.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: "https://project2.amit-learning.com/api",
    ),
  );

  ApiService();

  Future<dynamic> get({
    required String path,
    @required dynamic body,
    @required String? token,
  }) async {
    var response = await _dio.get(
      path,
      data: body,
      options: Options(
        headers: {
          HttpHeaders.authorizationHeader:
              "Bearer ${token ?? JobsqueSharedPrefrences.getString(kToken)}",
        },
      ),
    );
    return response.data;
  }

  Future<dynamic> post(
      {required String path,
      @required dynamic body,
      @required String? token,
      Map<String, dynamic>? queryParameters,
      String? contentType}) async {
    var response = await _dio.post(
      path,
      queryParameters: queryParameters,
      data: body,
      options: Options(
        headers: {
          HttpHeaders.authorizationHeader:
              "Bearer ${token ?? JobsqueSharedPrefrences.getString(kToken)}",
          HttpHeaders.contentTypeHeader:
              contentType ?? 'application/x-www-form-urlencoded',
        },
      ),
    );
    return response.data;
  }

  Future<dynamic> put(
      {required String path,
      @required dynamic body,
      @required String? token,
      Map<String, dynamic>? queryParameters}) async {
    var response = await _dio.put(
      path,
      data: body,
      queryParameters: queryParameters,
      options: Options(
        headers: {
          HttpHeaders.authorizationHeader:
              "Bearer ${token ?? JobsqueSharedPrefrences.getString(kToken)}",
        },
      ),
    );
    return response.data;
  }
}

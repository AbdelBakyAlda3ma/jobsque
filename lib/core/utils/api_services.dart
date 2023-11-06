import 'dart:developer';
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
    log("Bearer ${token ?? JobsqueSharedPrefrences.getString(kToken)}");
    var response = await _dio.get(
      path,
      data: body,
      options: Options(
        headers: {
          /// this is not the best way to store the token or any senstive information
          /// about the user data in SHARED_PREFRENCES better store in scure flutter storage
          /// or in env file
          /// and I put this token bucause the new generated tokens from API
          /// dosn't authrized "the API is so bad"
          HttpHeaders.authorizationHeader:
              "Bearer 526|0wA3eRiWDjwwaMKL4G72vh7jy76bl1oZvjvb0To1"
          // "Bearer ${token ?? JobsqueSharedPrefrences.getString(kToken)}",
        },
      ),
    );
    return response.data;
  }

  Future<dynamic> delete({
    required String path,
    @required dynamic body,
    @required String? token,
  }) async {
    var response = await _dio.delete(
      path,
      data: body,
      options: Options(
        headers: {
          /// this is not the best way to store the token or any senstive information
          /// about the user data in SHARED_PREFRENCES better store in scure flutter storage
          /// or in env file
          /// and I put this token bucause the new generated tokens from API
          /// dosn't authrized "the API is so bad"
          HttpHeaders.authorizationHeader:
              "Bearer 526|0wA3eRiWDjwwaMKL4G72vh7jy76bl1oZvjvb0To1"
          // "Bearer ${token ?? JobsqueSharedPrefrences.getString(kToken)}",
        },
      ),
    );
    return response.data;
  }

  Future<dynamic> post({
    required String path,
    @required dynamic body,
    @required String? token,
    Map<String, dynamic>? queryParameters,
    String? contentType,
  }) async {
    var response = await _dio.post(
      path,
      queryParameters: queryParameters,
      data: body,
      options: Options(
        headers: {
          /// this is not the best way to store the token or any senstive information
          /// about the user data in SHARED_PREFRENCES better store in scure flutter storage
          /// or in env file
          /// and I put this token bucause the new generated tokens from API
          /// dosn't authrized "the API is so bad"
          HttpHeaders.authorizationHeader:
              "Bearer 526|0wA3eRiWDjwwaMKL4G72vh7jy76bl1oZvjvb0To1"
          // "Bearer ${token ?? JobsqueSharedPrefrences.getString(kToken)}",
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
          /// this is not the best way to store the token or any senstive information
          /// about the user data in SHARED_PREFRENCES better store in scure flutter storage
          /// or in env file
          /// and I put this token bucause the new generated tokens from API
          /// dosn't authrized "the API is so bad"
          HttpHeaders.authorizationHeader:
              "Bearer 526|0wA3eRiWDjwwaMKL4G72vh7jy76bl1oZvjvb0To1"
          // "Bearer ${token ?? JobsqueSharedPrefrences.getString(kToken)}",
        },
      ),
    );
    return response.data;
  }
}

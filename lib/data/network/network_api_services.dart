import 'dart:convert';
import 'package:carselona/data/app_exception.dart';
import 'package:carselona/data/network/base_api_services.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class NetworkApiServices extends BaseApiServices {
  static Dio dio = Dio();

  // get api
  @override
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) {
      print(url);
    }

    dynamic responseJson;
    try {
      final response = await dio.get(url).timeout(const Duration(seconds: 30));
      responseJson = returnResponce(response);
    } on DioError catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw RequestTimeOut(e.message);
      } else {
        throw InternetException();
      }
    }
    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;
  }

  // get api with header
  Future<dynamic> getHeaderApi(Map<String, String>? header, String url) async {
    if (kDebugMode) {
      print(url);
    }

    dynamic responseJson;
    try {
      final response = await dio.get(
        url,
        options: Options(headers: header),
      ).timeout(const Duration(seconds: 30));
      responseJson = returnResponce(response);
    } on DioError catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw RequestTimeOut(e.message);
      } else {
        throw InternetException();
      }
    }
    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;
  }

  // post api
  @override
  Future<dynamic> postApi(var data, String url) async {
    if (kDebugMode) {
      print("api url :- ${url.toString()}");
      print("data :- ${data.toString()}");
    }

    dynamic responseJson;
    try {
      final response = await dio.post(
        url,
        data: jsonEncode(data),
        options: Options(headers: {'Content-Type': 'application/json'}),
      ).timeout(const Duration(seconds: 30));
      responseJson = returnResponce(response);
    } on DioError catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw RequestTimeOut(e.message);
      } else {
        throw InternetException();
      }
    }
    return responseJson;
  }

  // post api with header
  Future<dynamic> postHeaderApi({
    required Map<String, String>? header,
    required Object? data,
    required String url,
  }) async {
    if (kDebugMode) {
      print("api url :- ${url.toString()}");
      print("data :- ${data.toString()}");
      print("header :- ${header.toString()}");
    }

    dynamic responseJson;
    try {
      final response = await dio.post(
        url,
        data: jsonEncode(data),
        options: Options(headers: header),
      ).timeout(const Duration(seconds: 30));
      responseJson = returnResponce(response);
    } on DioError catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw RequestTimeOut(e.message);
      } else {
        throw InternetException();
      }
    }
    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;
  }

  // Add other methods similarly...

  // handling response
  dynamic returnResponce(Response response) {
    dynamic responseJson = jsonDecode(response.toString());
    if (response.statusCode == 200 || response.statusCode == 201 || response.statusCode == 202) {
      return responseJson;
    } else {
      switch (response.statusCode) {
        case 400:
          debugPrint("Server Response 400 :- ${responseJson.toString()}");
          throw FetchDataException(response.statusCode.toString());

        case 401:
          debugPrint("Server Response 401 :- ${responseJson.toString()}");
          throw FetchDataException(response.statusCode.toString());

        case 403:
          debugPrint("Server Response 403 :- ${responseJson.toString()}");
          throw FetchDataException(response.statusCode.toString());

        case 404:
          debugPrint("Server Response 404 :- ${responseJson.toString()}");
          throw FetchDataException(response.statusCode.toString());

        case 422:
          debugPrint("Server Response 422 :- ${responseJson.toString()}");
          throw FetchDataException(response.statusCode.toString());

        default:
          throw FetchDataException(response.statusCode.toString());
      }
    }
  }
}


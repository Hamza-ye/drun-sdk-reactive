import 'dart:convert';
import 'dart:io';

import 'package:d_sdk/core/constants.dart';
import 'package:d_sdk/core/network/http-details.util.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:dio/dio.dart';
import 'package:xml2json/xml2json.dart';

class HttpResponse {
  late int statusCode;
  late dynamic body;

  HttpResponse({required int statusCode, required dynamic body}) {
    this.statusCode = statusCode;
    this.body = body;
  }
}

class HttpClient {
  findById() {}

  update() {}

  static Future<HttpResponse> post(String resourceUrl, dynamic data,
      {String? baseUrl,
      String? username,
      String? password,
      AppDatabase? database,
      Dio? dioTestClient}) async {
    HttpDetails httpDetails = await HttpDetails(
            baseUrl: baseUrl,
            username: username,
            password: password,
            database: database)
        .get();

    final dioClient = dioTestClient ??
        Dio(BaseOptions(
            connectTimeout: Duration(milliseconds: 100000),
            receiveTimeout: Duration(milliseconds: 100000),
            headers: {
              HttpHeaders.authorizationHeader:
                  '${httpDetails.authTokenType} ${httpDetails.authToken}',
              HttpHeaders.contentTypeHeader: 'application/json'
            }));

    try {
      final Response<dynamic> response = await dioClient
          .post('${httpDetails.baseUrl}$apiPath$resourceUrl', data: data);

      return HttpResponse(
          statusCode: response.statusCode ?? 500, body: response.data);
    } on DioError catch (error) {
      if (error.response != null) {
        return HttpResponse(
            statusCode: error.response?.statusCode ?? 500,
            body: error.response?.data);
      } else {
        return HttpResponse(
            statusCode: error.response?.statusCode ?? 500, body: error.message);
      }
    }
  }

  static Future<HttpResponse> put(String resourceUrl, dynamic data,
      {String? baseUrl,
      String? username,
      String? password,
      AppDatabase? database,
      Dio? dioTestClient}) async {
    HttpDetails httpDetails = await HttpDetails(
            baseUrl: baseUrl,
            username: username,
            password: password,
            database: database)
        .get();

    final dioClient = dioTestClient ??
        Dio(BaseOptions(
            connectTimeout: Duration(milliseconds: 100000),
            receiveTimeout: Duration(milliseconds: 100000),
            headers: {
              HttpHeaders.authorizationHeader:
                  '${httpDetails.authTokenType} ${httpDetails.authToken}',
              HttpHeaders.contentTypeHeader: 'application/json'
            }));

    try {
      final Response<dynamic> response = data == null
          ? await dioClient.put('${httpDetails.baseUrl}$apiPath$resourceUrl')
          : await dioClient.put('${httpDetails.baseUrl}$apiPath$resourceUrl',
              data: data);

      return HttpResponse(
          statusCode: response.statusCode ?? 500, body: response.data);
    } on DioError catch (error) {
      if (error.response != null) {
        return HttpResponse(
            statusCode: error.response?.statusCode ?? 500,
            body: error.response?.data);
      } else {
        return HttpResponse(
            statusCode: error.response?.statusCode ?? 500, body: error.message);
      }
    }
  }

  static Future<HttpResponse> get(String resourceUrl,
      {String? baseUrl,
      String? username,
      String? password,
      AppDatabase? database,
      Dio? dioTestClient}) async {
    HttpDetails httpDetails = await HttpDetails(
            baseUrl: baseUrl,
            username: username,
            password: password,
            database: database)
        .get();

    final dioClient = dioTestClient ??
        Dio(BaseOptions(
            connectTimeout: Duration(milliseconds: 100000),
            receiveTimeout: Duration(milliseconds: 100000),
            headers: {
              HttpHeaders.authorizationHeader:
                  '${httpDetails.authTokenType} ${httpDetails.authToken}',
            }));

    try {
      final Response<dynamic> response =
          await dioClient.get('${httpDetails.baseUrl}$apiPath$resourceUrl');

      return HttpResponse(
          statusCode: response.statusCode ?? 500, body: response.data);
    } on DioError catch (error) {
      if (error.response != null) {
        dynamic errorBody = error.response?.data;
        if (error.response?.data is String) {
          try {
            final xmlToJsonConverter = Xml2Json();
            xmlToJsonConverter.parse(error.response?.data);

            errorBody = jsonDecode(xmlToJsonConverter.toParker());
          } catch (e) {}
        }

        return HttpResponse(
            statusCode: error.response?.statusCode ?? 500, body: errorBody);
      } else {
        dynamic errorBody = error.message;

        try {
          final xmlToJsonConverter = Xml2Json();
          xmlToJsonConverter.parse(error.message!);

          errorBody = jsonDecode(xmlToJsonConverter.toParker());
        } catch (e) {}

        return HttpResponse(
            statusCode: error.response?.statusCode ?? 500, body: errorBody);
      }
    }
  }

  static Future<String> getHttpDetails(
      {String? baseUrl,
      String? username,
      String? password,
      AppDatabase? database}) async {
    if (username != null && password != null) {
      return base64Encode(utf8.encode('$username:$password'));
    }

    final User? user = await database?.managers.users.getSingle();;

    return base64Encode(utf8.encode('${user?.username}:${user?.password}'));
  }
}

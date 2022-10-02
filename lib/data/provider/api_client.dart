import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';

class ApiClient {
  ApiClient();

  /// Header
  static Map<String, String> getHeaders() {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Charset': 'utf-8',
      'Accept-Version': 'v1',
    };
    return headers;
  }

  /// Options
  static var options = BaseOptions(
    baseUrl: 'https://api.unsplash.com/',
    headers: getHeaders(),
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );

  /// Dio
  static Dio get myDio {
    final Dio dio = Dio(options);
    return dio;
  }

  /// Requests
  Future? GET({required String api, required Map<String, dynamic> params}) async {
    try {
      Response response = await myDio.get(api, queryParameters: params);
      print('****** API CLIENT GET METHOD ******');
      print('\t response.data.runtimeType : ${response.data.runtimeType}');
      print('************************************');
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data;
      }
    } on DioError catch (e) {}
    return null;
  }


  Future<String?> getFile({required String api}) async {
    Response response = await myDio.get(api, onReceiveProgress: showDownloadProgress);
    if (response.statusCode == 200) return jsonEncode(response.data);
    return null;
  }

  Future<String?> POST({required String api, required Map<String, dynamic> body}) async {
    try {
      Response response = await myDio.post(api, data: body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return jsonEncode(response.data);
      }
    } on DioError catch (e) {}
    return null;
  }

  Future<String?> postFile({required String api, required File file}) async {
    FormData formData = FormData.fromMap(
      {
        "file": MultipartFile.fromFileSync(
          file.path,
          filename: DateTime.now().toIso8601String(),
        ),
      },
    );
    try {
      Response response = await myDio.post(api, data: formData);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return jsonEncode(response.data);
      }
    } on DioError catch (e) {}
    return null;
  }

  Future<String?> PUT({required String api, required Map<String, dynamic> body}) async {
    try {
      Response response = await myDio.put(api, data: jsonEncode(body));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return jsonEncode(response.data);
      }
      return null;
    } on DioError catch (e) {}
    return null;
  }

  Future<String?> PATCH({required String api, required Map<String, dynamic> params}) async {
    Response response = await myDio.patch(api, queryParameters: params);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return jsonEncode(response.data);
    }
    return null;
  }

  Future<String?> DELETE({required String api, Map<String, dynamic>? params}) async {
    try {
      if (params != null) {
        Response response = await myDio.delete(api, data: params);
        if (response.statusCode == 200 || response.statusCode == 201) {
          return jsonEncode(response.data);
        }
      } else {
        Response response =
        await Dio().delete(api, queryParameters: paramsEmpty());
        if (response.statusCode == 200 || response.statusCode == 201) {
          return jsonEncode(response.data);
        }
      }

      return null;
    } on DioError catch (e) {}
    return null;
  }

  void showDownloadProgress(received, total) {
    if (total != -1) {
      print((received / total * 100).toStringAsFixed(0) + "%");
    }
  }

  /// Parameters
  static Map<String, dynamic> paramsEmpty() {
    Map<String, dynamic> params = {};
    return params;
  }
  static Map<String, dynamic> paramsGET({required int page, required int perPage}) {
    Map<String, dynamic> params = {
      'client_id': 'hg0ISQCaxouTXsPDT3tcCxYCAGXbpvnb6B05C3PaBkQ',
      'page': page,
      'per_page': perPage
    };
    return params;
  }

}
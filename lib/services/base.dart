import 'dart:convert';

import 'package:http/http.dart' as http;

abstract class BaseRequest {
  static String basePath = '/api/';
  final String baseUrl;

  BaseRequest({required this.baseUrl});

  Future<dynamic> get(
    String path, {
    Map<String, dynamic> params = const {},
  }) async {
    final url = Uri.https(baseUrl, basePath + path, params);
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception(response);
    }

    return jsonDecode(response.body);
  }

  Future<dynamic> getByPage(int pageNumber);
}

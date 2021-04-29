import 'dart:convert';

import 'package:dev_flutter/models/listing_preview_model.dart';
import 'package:dev_flutter/models/podcast_preview_model.dart';
import 'package:dev_flutter/models/post_model.dart';
import 'package:dev_flutter/models/post_preview_model.dart';
import 'package:dev_flutter/models/tag_model.dart';
import 'package:dev_flutter/models/video_preview_model.dart';
import 'package:dev_flutter/utils/custom_json_decoder.dart';
import 'package:http/http.dart' as http;

final _jsonDecoder = CustomJsonDecoder({
  ListingPreviewModel: ListingPreviewModel.fromJsonFactory,
  PodcastPreviewModel: PodcastPreviewModel.fromJsonFactory,
  PostModel: PostModel.fromJsonFactory,
  PostPreviewModel: PostPreviewModel.fromJsonFactory,
  TagModel: TagModel.fromJsonFactory,
  VideoPreviewModel: VideoPreviewModel.fromJsonFactory,
});

abstract class BaseRequestService {
  static String basePath = '/api/';
  final String baseUrl;
  final String endpointPath;

  BaseRequestService({required this.endpointPath, required this.baseUrl});

  Future<dynamic> _get(
    String path, {
    required Map<String, dynamic> params,
  }) async {
    final url = Uri.https(baseUrl, basePath + path, params);
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception(response);
    }

    final result = response.body;

    if (result.isEmpty) {
      throw Exception('An empty response');
    }

    return jsonDecode(response.body);
  }

  Future<T> get<T>(
    String path, {
    Map<String, dynamic> params = const {},
  }) async {
    final json = await _get(path, params: params);

    return _jsonDecoder.decode<T>(json);
  }

  Future<List<T>> getAll<T>({
    Map<String, dynamic> params = const {},
  }) async {
    final json = await _get(endpointPath, params: params);

    return _jsonDecoder.decode<T>(json);
  }

  Future<dynamic> getByPage(int pageNumber);
}

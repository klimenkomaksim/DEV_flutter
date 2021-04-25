import 'package:dev_flutter/services/base.dart';
import 'package:dev_flutter/models/post_model.dart';
import 'package:dev_flutter/models/post_preview_model.dart';

class Article extends BaseRequest {
  static String basePath = 'articles/';

  Article(String url) : super(baseUrl: url);

  Future<List<PostPreviewModel>> getAll(
      {Map<String, dynamic> params = const {}}) async {
    final List<dynamic> json = await get(basePath, params: params);

    return json.map((post) => PostPreviewModel.fromJson(post)).toList();
  }

  @override
  Future<List<PostPreviewModel>> getByPage(int pageNumber) {
    final params = {
      'per_page': '15',
      'page': pageNumber.toString(),
    };

    return getAll(params: params);
  }

  Future<List<PostPreviewModel>> getByTagAndPage(String tag, int pageNumber) {
    final params = {
      'tag': tag,
      'per_page': '15',
      'page': pageNumber.toString(),
    };

    return getAll(params: params);
  }

  Future<PostModel> getById(String id) async {
    final Map<String, dynamic> json = await get(basePath + id);

    return PostModel.fromJson(json);
  }
}

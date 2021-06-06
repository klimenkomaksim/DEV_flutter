import 'package:dev_flutter/services/base.dart';
import 'package:dev_flutter/models/post_model.dart';
import 'package:dev_flutter/models/post_preview_model.dart';

class Article extends BaseRequestService {
  static const _endpointPath = 'articles/';

  Article(String url) : super(baseUrl: url, endpointPath: _endpointPath);

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

  Future<PostModel> getById(int id) async {
    return get(endpointPath + id.toString());
  }
}

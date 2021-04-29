import 'package:dev_flutter/models/tag_model.dart';
import 'package:dev_flutter/services/base.dart';

class Tag extends BaseRequestService {
  static const _endpointPath = 'tags/';

  Tag(String url) : super(baseUrl: url, endpointPath: _endpointPath);

  @override
  Future<List<TagModel>> getByPage(int pageNumber) {
    final params = {
      'per_page': '15',
      'page': pageNumber.toString(),
    };

    return getAll(params: params);
  }
}

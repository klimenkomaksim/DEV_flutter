import 'package:dev_flutter/models/podcast_preview_model.dart';
import 'package:dev_flutter/services/base.dart';

class Podcast extends BaseRequestService {
  static const _endpointPath = 'podcast_episodes/';

  Podcast(String url) : super(baseUrl: url, endpointPath: _endpointPath);

  @override
  Future<List<PodcastPreviewModel>> getByPage(int pageNumber) {
    final params = {
      'per_page': '15',
      'page': pageNumber.toString(),
    };

    return getAll(params: params);
  }
}

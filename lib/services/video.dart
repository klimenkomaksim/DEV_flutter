import 'package:dev_flutter/models/video_preview_model.dart';
import 'package:dev_flutter/services/base.dart';

class Video extends BaseRequestService {
  static const _endpointPath = 'videos/';

  Video(String url) : super(baseUrl: url, endpointPath: _endpointPath);

  @override
  Future<List<VideoPreviewModel>> getByPage(int pageNumber) {
    final params = {
      'per_page': '15',
      'page': pageNumber.toString(),
    };

    return getAll(params: params);
  }
}

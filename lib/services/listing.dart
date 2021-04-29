import 'package:dev_flutter/models/listing_preview_model.dart';
import 'package:dev_flutter/services/base.dart';

class Listing extends BaseRequestService {
  static const _endpointPath = 'listings/';

  Listing(String url) : super(baseUrl: url, endpointPath: _endpointPath);

  @override
  Future<List<ListingPreviewModel>> getByPage(int pageNumber) {
    final params = {
      'per_page': '15',
      'page': pageNumber.toString(),
    };

    return getAll(params: params);
  }
}

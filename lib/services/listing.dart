import 'package:chopper/chopper.dart';
import 'package:dev_flutter/models/listing_preview_model.dart';
import 'package:dev_flutter/services/base.dart';

part 'listing.chopper.dart';

@ChopperApi(baseUrl: '/listings')
abstract class Listing extends BaseService {
  static Listing create([ChopperClient? client]) => _$Listing(client);

  @Get()
  @override
  Future<Response<List<ListingPreviewModel>>> getByPage(
    @Query('page') int pageNumber, {
    @Query('per_page') int perPage = 15,
  });
}

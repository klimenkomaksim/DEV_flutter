import 'package:chopper/chopper.dart';
import 'package:dev_flutter/models/tag_model.dart';
import 'package:dev_flutter/services/base.dart';

part 'tag.chopper.dart';

@ChopperApi(baseUrl: '/tags')
abstract class Tag extends BaseService {
  static Tag create([ChopperClient? client]) => _$Tag(client);

  @Get()
  @override
  Future<Response<List<TagModel>>> getByPage(
    @Query('page') int pageNumber, {
    @Query('per_page') int perPage = 15,
  });
}

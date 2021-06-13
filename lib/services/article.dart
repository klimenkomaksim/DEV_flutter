import 'package:dev_flutter/models/post_model.dart';
import 'package:dev_flutter/models/post_preview_model.dart';

import 'package:chopper/chopper.dart';

part 'article.chopper.dart';

@ChopperApi(baseUrl: '/articles')
abstract class Article extends ChopperService {
  static Article create([ChopperClient? client]) => _$Article(client);

  @Get()
  Future<Response<List<PostPreviewModel>>> getByPage(
    @Query('page') int pageNumber, {
    @Query('per_page') int perPage = 15,
  });

  @Get()
  Future<Response<List<PostPreviewModel>>> getByTagAndPage(
    @Query('page') int pageNumber,
    @Query() String tag, {
    @Query('per_page') int perPage = 15,
  });

  @Get(path: '/{id}')
  Future<Response<PostModel>> getById(@Path() int id);
}

import 'package:chopper/chopper.dart';
import 'package:dev_flutter/models/podcast_preview_model.dart';
import 'package:dev_flutter/services/base.dart';

part 'podcast.chopper.dart';

@ChopperApi(baseUrl: '/podcast_episodes')
abstract class Podcast extends BaseService {
  static Podcast create([ChopperClient? client]) => _$Podcast(client);

  @Get()
  @override
  Future<Response<List<PodcastPreviewModel>>> getByPage(
    @Query('page') int pageNumber, {
    @Query('per_page') int perPage = 15,
  });
}

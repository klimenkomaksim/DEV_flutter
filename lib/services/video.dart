import 'package:chopper/chopper.dart';
import 'package:dev_flutter/models/video_preview_model.dart';
import 'package:dev_flutter/services/base.dart';

part 'video.chopper.dart';

@ChopperApi(baseUrl: '/videos')
abstract class Video extends BaseService {
  static Video create([ChopperClient? client]) => _$Video(client);

  @Get()
  @override
  Future<Response<List<VideoPreviewModel>>> getByPage(
    @Query('page') int pageNumber, {
    @Query('per_page') int perPage = 15,
  });
}

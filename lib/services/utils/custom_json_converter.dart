import 'package:chopper/chopper.dart';
import 'package:dev_flutter/models/listing_preview_model.dart';
import 'package:dev_flutter/models/podcast_preview_model.dart';
import 'package:dev_flutter/models/post_model.dart';
import 'package:dev_flutter/models/post_preview_model.dart';
import 'package:dev_flutter/models/tag_model.dart';
import 'package:dev_flutter/models/video_preview_model.dart';
import 'package:dev_flutter/utils/custom_json_decoder.dart';

final _jsonDecoder = CustomJsonDecoder({
  ListingPreviewModel: ListingPreviewModel.fromJsonFactory,
  PodcastPreviewModel: PodcastPreviewModel.fromJsonFactory,
  PostModel: PostModel.fromJsonFactory,
  PostPreviewModel: PostPreviewModel.fromJsonFactory,
  TagModel: TagModel.fromJsonFactory,
  VideoPreviewModel: VideoPreviewModel.fromJsonFactory,
});

class CustomJsonConverter extends JsonConverter {
  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(
      Response<dynamic> response) {
    final dynamicResponse = super.convertResponse(response);

    final BodyType body = _jsonDecoder.decode<InnerType>(dynamicResponse.body);

    return dynamicResponse.copyWith<BodyType>(body: body);
  }
}

import 'package:chopper/chopper.dart';
import 'package:dev_flutter/services/article.dart';
import 'package:dev_flutter/services/utils/custom_json_converter.dart';
import 'package:dev_flutter/services/listing.dart';
import 'package:dev_flutter/services/podcast.dart';
import 'package:dev_flutter/services/tag.dart';
import 'package:dev_flutter/services/video.dart';

class API {
  ChopperClient chopper;

  API({required String url})
      : chopper = ChopperClient(
          baseUrl: url,
          services: [
            Article.create(),
            Listing.create(),
            Podcast.create(),
            Tag.create(),
            Video.create(),
          ],
          converter: CustomJsonConverter(),
        );

  Article get article => chopper.getService<Article>();

  Listing get listing => chopper.getService<Listing>();

  Podcast get podcast => chopper.getService<Podcast>();

  Tag get tag => chopper.getService<Tag>();

  Video get video => chopper.getService<Video>();
}

import 'package:dev_flutter/services/article.dart';
import 'package:dev_flutter/services/listing.dart';
import 'package:dev_flutter/services/podcast.dart';
import 'package:dev_flutter/services/tag.dart';
import 'package:dev_flutter/services/video.dart';

class API {
  Article article;
  Listing listing;
  Podcast podcast;
  Tag tag;
  Video video;

  API({required String url})
      : article = Article(url),
        listing = Listing(url),
        podcast = Podcast(url),
        tag = Tag(url),
        video = Video(url);
}

import 'package:json_annotation/json_annotation.dart';

part 'podcast_model.g.dart';

@JsonSerializable()
class Podcast {
  final String title;
  @JsonKey(name: 'image_url')
  final String imageUrl;

  Podcast({required this.title, required this.imageUrl});

  factory Podcast.fromJson(Map<String, dynamic> json) =>
      _$PodcastFromJson(json);

  Map<String, dynamic> toJson() => _$PodcastToJson(this);
}

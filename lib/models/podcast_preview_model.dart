import 'package:json_annotation/json_annotation.dart';

import 'podcast_model.dart';

part 'podcast_preview_model.g.dart';

@JsonSerializable()
class PodcastPreviewModel {
  final int id;
  @JsonKey(name: 'title')
  final String episodeTitle;
  final Podcast? podcast;

  PodcastPreviewModel({
    required this.id,
    required this.episodeTitle,
    this.podcast,
  });

  factory PodcastPreviewModel.fromJson(Map<String, dynamic> json) =>
      _$PodcastPreviewModelFromJson(json);

  Map<String, dynamic> toJson() => _$PodcastPreviewModelToJson(this);

  String get podcastTitle => podcast?.title ?? '';
  String get podcastImageUrl => podcast?.imageUrl ?? '';
}

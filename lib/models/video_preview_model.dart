import 'package:json_annotation/json_annotation.dart';

import 'user_model.dart';

part 'video_preview_model.g.dart';

@JsonSerializable()
class VideoPreviewModel {
  final int id;
  @JsonKey(name: 'cloudinary_video_url')
  final String videoPrevieImageUrl;
  final String title;
  @JsonKey(name: 'video_duration_in_minutes')
  final String duration;
  @JsonKey(name: 'video_source_url', defaultValue: '')
  final String videoSourceUrl;
  final User? user;

  VideoPreviewModel(
      {required this.id,
      required this.videoPrevieImageUrl,
      required this.title,
      required this.duration,
      required this.videoSourceUrl,
      this.user});

  factory VideoPreviewModel.fromJson(Map<String, dynamic> json) =>
      _$VideoPreviewModelFromJson(json);

  static VideoPreviewModel Function(Map<String, dynamic>) fromJsonFactory =
      _$VideoPreviewModelFromJson;

  Map<String, dynamic> toJson() => _$VideoPreviewModelToJson(this);

  String get author => user?.username ?? '';
}

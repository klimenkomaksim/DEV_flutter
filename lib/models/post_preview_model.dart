import 'package:json_annotation/json_annotation.dart';

import 'user_model.dart';

part 'post_preview_model.g.dart';

@JsonSerializable()
class PostPreviewModel {
  final int id;
  final String title;
  final String? description;
  @JsonKey(name: 'readable_publish_date')
  final String publishDate;
  @JsonKey(name: 'comments_count', defaultValue: 0)
  final int commentsCount;
  @JsonKey(name: 'public_reactions_count', defaultValue: 0)
  final int likesCount;
  @JsonKey(name: 'tag_list', defaultValue: [])
  final List<String> tags;
  final User? user;

  PostPreviewModel(
      {required this.id,
      required this.title,
      required this.publishDate,
      required this.tags,
      required this.commentsCount,
      required this.likesCount,
      this.description,
      this.user});

  factory PostPreviewModel.fromJson(Map<String, dynamic> json) =>
      _$PostPreviewModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostPreviewModelToJson(this);

  static PostPreviewModel Function(Map<String, dynamic>) fromJsonFactory =
      _$PostPreviewModelFromJson;

  String get username => user?.username ?? '';
  String get profileImage => user?.profileImage ?? '';
}

import 'package:json_annotation/json_annotation.dart';

import 'user_model.dart';

part 'post_preview_model.g.dart';

@JsonSerializable()
class PostPreviewModel {
  final int id;
  final String title;
  @JsonKey(includeIfNull: false)
  final String? description;
  @JsonKey(name: 'readable_publish_date')
  final String publishDate;
  @JsonKey(name: 'comments_count')
  final int? comments;
  @JsonKey(name: 'public_reactions_count')
  final int? publicReactionCount;
  @JsonKey(name: 'tag_list')
  final List<String> tags;
  final User? user;

  PostPreviewModel(
      {required this.id,
      required this.title,
      required this.publishDate,
      this.comments,
      this.publicReactionCount,
      this.description,
      List<String>? tags,
      this.user})
      : tags = tags ?? [];

  factory PostPreviewModel.fromJson(Map<String, dynamic> json) =>
      _$PostPreviewModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostPreviewModelToJson(this);

  String get username => user?.username ?? '';
  String get profileImage => user?.profileImage ?? '';
  int get likesCount => publicReactionCount ?? 0;
  int get commentsCount => comments ?? 0;
}

import 'package:json_annotation/json_annotation.dart';

import 'post_preview_model.dart';
import 'user_model.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel extends PostPreviewModel {
  @JsonKey(name: 'cover_image')
  final String? coverImage;
  @JsonKey(name: 'body_html')
  final String bodyHtml;
  @override
  @JsonKey(defaultValue: [])
  final List<String> tags;

  PostModel(
      {required this.bodyHtml,
      required int id,
      required String title,
      required String publishDate,
      required this.tags,
      this.coverImage,
      int comments = 0,
      int publicReactionCount = 0,
      User? user})
      : super(
            id: id,
            title: title,
            publishDate: publishDate,
            commentsCount: comments,
            likesCount: publicReactionCount,
            tags: tags,
            user: user);

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  static PostModel Function(Map<String, dynamic>) fromJsonFactory =
      _$PostModelFromJson;

  @override
  Map<String, dynamic> toJson() => _$PostModelToJson(this);

  String get data => bodyHtml;
  String get coverImageUrl => coverImage ?? '';
}

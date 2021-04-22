import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class User {
  final String name;
  @JsonKey(name: 'profile_image_90', defaultValue: '')
  final String profileImage;

  User({required this.name, required this.profileImage});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  String get username => name;
}

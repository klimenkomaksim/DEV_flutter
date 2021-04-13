import 'user_model.dart';

class VideoPreviewModel {
  int? _id;
  String? _cloudinaryVideoUrl;
  String? _title;
  String? _videoDurationInMinutes;
  String? _videoSourceUrl;
  User? _user;

  VideoPreviewModel(
      {required int id,
      required String cloudinaryVideoUrl,
      required String title,
      required String videoDurationInMinutes,
      required String videoSourceUrl,
      required User user}) {
    _id = id;
    _cloudinaryVideoUrl = cloudinaryVideoUrl;
    _title = title;
    _videoDurationInMinutes = videoDurationInMinutes;
    _videoSourceUrl = videoSourceUrl;
    _user = user;
  }

  int? get id => _id;
  String? get videoPrevieImageUrl => _cloudinaryVideoUrl;
  String? get title => _title;
  String? get duration => _videoDurationInMinutes;
  String? get videoSourceUrl => _videoSourceUrl;
  String? get author => _user?.username;

  VideoPreviewModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _cloudinaryVideoUrl = json['cloudinary_video_url'];
    _title = json['title'];
    _videoDurationInMinutes = json['video_duration_in_minutes'];
    _videoSourceUrl = json['video_source_url'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['id'] = _id;
    data['cloudinary_video_url'] = _cloudinaryVideoUrl;
    data['title'] = _title;
    data['video_duration_in_minutes'] = _videoDurationInMinutes;
    data['video_source_url'] = _videoSourceUrl;
    data['user'] = _user?.toJson();

    return data;
  }
}

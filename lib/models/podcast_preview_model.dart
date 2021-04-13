class PodcastPreviewModel {
  int? _id;
  String? _title;
  Podcast? _podcast;

  PodcastPreviewModel(
      {required int id, required String title, required Podcast podcast}) {
    _id = id;
    _title = title;
    _podcast = podcast;
  }

  int? get id => _id;
  String? get episodeTitle => _title;
  String? get podcastTitle => _podcast?.title;
  String? get podcastImageUrl => _podcast?.imageUrl;

  PodcastPreviewModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _title = json['title'];
    _podcast =
        json['podcast'] != null ? Podcast.fromJson(json['podcast']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['id'] = _id;
    data['title'] = _title;
    data['podcast'] = _podcast?.toJson();

    return data;
  }
}

class Podcast {
  String? _title;
  String? _imageUrl;

  Podcast({required String title, required String imageUrl}) {
    _title = title;
    _imageUrl = imageUrl;
  }

  String? get title => _title;
  String? get imageUrl => _imageUrl;

  Podcast.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['title'] = _title;
    data['image_url'] = _imageUrl;

    return data;
  }
}

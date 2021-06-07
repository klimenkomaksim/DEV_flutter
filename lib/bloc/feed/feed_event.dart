part of 'feed_bloc.dart';

@immutable
abstract class FeedEvent {
  const FeedEvent();
}

class GetArticles extends FeedEvent {
  final int pageNumber;

  const GetArticles(this.pageNumber);
}

class GetArticlesByTag extends FeedEvent {
  final int pageNumber;
  final String tagName;

  const GetArticlesByTag(this.pageNumber, this.tagName);
}

class GetListings extends FeedEvent {
  final int pageNumber;

  const GetListings(this.pageNumber);
}

class GetPodcasts extends FeedEvent {
  final int pageNumber;

  const GetPodcasts(this.pageNumber);
}

class GetTags extends FeedEvent {
  final int pageNumber;

  const GetTags(this.pageNumber);
}

class GetVideos extends FeedEvent {
  final int pageNumber;

  const GetVideos(this.pageNumber);
}

class ClearState extends FeedEvent {
  const ClearState();
}

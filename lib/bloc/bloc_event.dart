part of 'main_bloc.dart';

@immutable
abstract class BlocEvent {
  const BlocEvent();
}

class GetArticles extends BlocEvent {
  final int pageNumber;

  const GetArticles(this.pageNumber);
}

class GetArticlesByTag extends BlocEvent {
  final int pageNumber;
  final String tagName;

  const GetArticlesByTag(this.pageNumber, this.tagName);
}

class GetArticleById extends BlocEvent {
  final int id;

  const GetArticleById(this.id);
}

class GetListings extends BlocEvent {
  final int pageNumber;

  const GetListings(this.pageNumber);
}

class GetPodcasts extends BlocEvent {
  final int pageNumber;

  const GetPodcasts(this.pageNumber);
}

class GetTags extends BlocEvent {
  final int pageNumber;

  const GetTags(this.pageNumber);
}

class GetVideos extends BlocEvent {
  final int pageNumber;

  const GetVideos(this.pageNumber);
}

class ClearState extends BlocEvent {
  const ClearState();
}

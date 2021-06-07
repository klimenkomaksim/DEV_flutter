part of 'post_bloc.dart';

@immutable
abstract class PostEvent {
  const PostEvent();
}

class GetArticleById extends PostEvent {
  final int id;

  const GetArticleById(this.id);
}

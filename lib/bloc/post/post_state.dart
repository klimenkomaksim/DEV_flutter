part of 'post_bloc.dart';

@immutable
abstract class PostState {
  const PostState();
}

class PostInitial extends PostState {
  const PostInitial();
}

class PostLoading extends PostState {
  const PostLoading();
}

class PostLoaded extends PostState {
  final dynamic data;

  const PostLoaded(this.data);
}

class PostError extends PostState {
  const PostError();
}

part of 'feed_bloc.dart';

@immutable
abstract class FeedState {
  const FeedState();
}

class FeedInitial extends FeedState {
  const FeedInitial();
}

class FeedError extends FeedState {
  const FeedError();
}

class LoadedFeed extends FeedState {
  final List<dynamic> data;

  const LoadedFeed(this.data) : super();
}

class LoadedItem extends FeedState {
  final dynamic data;

  const LoadedItem(this.data) : super();
}

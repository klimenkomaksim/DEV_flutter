import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dev_flutter/services/api.dart';
import 'package:dev_flutter/services/base.dart';
import 'package:meta/meta.dart';

part 'feed_event.dart';
part 'feed_state.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  final API api;

  FeedBloc(this.api) : super(const FeedInitial());

  @override
  Stream<FeedState> mapEventToState(
    FeedEvent event,
  ) async* {
    FeedState state = const FeedError();

    // couldn't figure out how to use switch/case in this place
    if (event is GetArticles) {
      state = await _getDataByPage(api.article, event.pageNumber);
    } else if (event is GetListings) {
      state = await _getDataByPage(api.listing, event.pageNumber);
    } else if (event is GetPodcasts) {
      state = await _getDataByPage(api.podcast, event.pageNumber);
    } else if (event is GetTags) {
      state = await _getDataByPage(api.tag, event.pageNumber);
    } else if (event is GetVideos) {
      state = await _getDataByPage(api.video, event.pageNumber);
    } else if (event is GetArticlesByTag) {
      state = await _getArticlesByTag(event.pageNumber, event.tagName);
    } else if (event is ClearState) {
      state = const FeedInitial();
    }

    yield state;
  }

  Future<FeedState> _getDataByPage(
      BaseRequestService service, int pageNumber) async {
    try {
      final data = await service.getByPage(pageNumber);

      return LoadedFeed(data);
    } catch (e) {
      return const FeedError();
    }
  }

  Future<FeedState> _getArticlesByTag(int pageNumber, String tagName) async {
    try {
      final articles = await api.article.getByTagAndPage(tagName, pageNumber);

      return LoadedFeed(articles);
    } catch (e) {
      return const FeedError();
    }
  }
}
